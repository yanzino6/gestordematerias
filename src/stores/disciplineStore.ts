import { create } from 'zustand';
import { DisciplineWithRelations, DisciplineStatus } from '@/types/discipline';

interface DisciplineStore {
  disciplines: DisciplineWithRelations[];
  loading: boolean;
  setDisciplines: (disciplines: DisciplineWithRelations[]) => void;
  updateDisciplineStatus: (disciplineId: string, status: DisciplineStatus, overridePrerequisites?: boolean) => void;
  setLoading: (loading: boolean) => void;
  getProgress: () => { completed: number; total: number; percentage: number };
  getPeriodProgress: (period: number) => { completed: number; total: number; percentage: number };
  canStartDiscipline: (disciplineId: string) => { can: boolean; reason?: string };
}

export const useDisciplineStore = create<DisciplineStore>((set, get) => ({
  disciplines: [],
  loading: false,
  
  setDisciplines: (disciplines) => set({ disciplines }),
  
  setLoading: (loading) => set({ loading }),
  
  updateDisciplineStatus: (disciplineId, status, overridePrerequisites = false) => {
    set((state) => ({
      disciplines: state.disciplines.map((d) =>
        d.id === disciplineId
          ? {
              ...d,
              user_discipline: d.user_discipline
                ? { ...d.user_discipline, status, override_prerequisites: overridePrerequisites }
                : undefined,
            }
          : d
      ),
    }));
  },
  
  getProgress: () => {
    const { disciplines } = get();
    const totalRequired = disciplines.filter(d => !d.is_optional).length;
    const completed = disciplines.filter(
      d => !d.is_optional && d.user_discipline?.status === 'CONCLUIDA'
    ).length;
    
    return {
      completed,
      total: totalRequired,
      percentage: totalRequired > 0 ? Math.round((completed / totalRequired) * 100) : 0,
    };
  },
  
  getPeriodProgress: (period: number) => {
    const { disciplines } = get();
    const periodDisciplines = disciplines.filter(d => d.period === period && !d.is_optional);
    const completed = periodDisciplines.filter(
      d => d.user_discipline?.status === 'CONCLUIDA'
    ).length;
    
    return {
      completed,
      total: periodDisciplines.length,
      percentage: periodDisciplines.length > 0 
        ? Math.round((completed / periodDisciplines.length) * 100) 
        : 0,
    };
  },
  
  canStartDiscipline: (disciplineId: string) => {
    const { disciplines } = get();
    const discipline = disciplines.find(d => d.id === disciplineId);
    
    if (!discipline) {
      return { can: false, reason: 'Disciplina não encontrada' };
    }
    
    // Check if already started or completed
    if (discipline.user_discipline?.status === 'EM_ANDAMENTO' || 
        discipline.user_discipline?.status === 'CONCLUIDA') {
      return { can: true };
    }
    
    // Check prerequisites
    if (discipline.prerequisites && discipline.prerequisites.length > 0) {
      const unmetPrerequisites = discipline.prerequisites.filter(prereq => {
        const prereqDiscipline = disciplines.find(d => d.id === prereq.prerequisite_id);
        return prereqDiscipline?.user_discipline?.status !== 'CONCLUIDA';
      });
      
      if (unmetPrerequisites.length > 0) {
        const prereqNames = unmetPrerequisites
          .map(p => disciplines.find(d => d.id === p.prerequisite_id)?.code)
          .filter(Boolean)
          .join(', ');
        return { 
          can: false, 
          reason: `Pré-requisitos não cumpridos: ${prereqNames}` 
        };
      }
    }
    
    return { can: true };
  },
}));
