export type DisciplineStatus = 'NAO_INICIADA' | 'EM_ANDAMENTO' | 'CONCLUIDA' | 'BLOQUEADA';

export interface Discipline {
  id: string;
  code: string;
  name: string;
  credits: number;
  workload: number;
  period: number | null;
  is_optional: boolean;
  course_id: string | null;
  created_at?: string;
}

export interface Prerequisite {
  id: string;
  discipline_id: string;
  prerequisite_id: string;
  prerequisite?: Discipline;
}

export interface Corequisite {
  id: string;
  discipline_id: string;
  corequisite_id: string;
  corequisite?: Discipline;
}

export interface UserDiscipline {
  id: string;
  user_id: string;
  discipline_id: string;
  status: DisciplineStatus;
  override_prerequisites: boolean;
  started_at: string | null;
  completed_at: string | null;
  created_at: string;
  updated_at: string;
  discipline?: Discipline;
}

export interface DisciplineWithRelations extends Discipline {
  prerequisites: Prerequisite[];
  corequisites: Corequisite[];
  user_discipline?: UserDiscipline;
}
