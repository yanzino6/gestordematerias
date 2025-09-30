import { useEffect, useState } from 'react';
import { supabase } from '@/integrations/supabase/client';
import { useDisciplineStore } from '@/stores/disciplineStore';
import { DisciplineWithRelations, DisciplineStatus } from '@/types/discipline';
import { ThemeToggle } from '@/components/ThemeToggle';
import { UserMenu } from '@/components/UserMenu';
import { DisciplineCard } from '@/components/DisciplineCard';
import { PrerequisiteWarningDialog } from '@/components/PrerequisiteWarningDialog';
import { DisciplineDetailsDialog } from '@/components/DisciplineDetailsDialog';
import { ProgressCard } from '@/components/ProgressCard';
import { Input } from '@/components/ui/input';
import { Button } from '@/components/ui/button';
import { Tabs, TabsContent, TabsList, TabsTrigger } from '@/components/ui/tabs';
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from '@/components/ui/select';
import { toast } from '@/hooks/use-toast';
import { Search, Filter, GraduationCap } from 'lucide-react';
import { Skeleton } from '@/components/ui/skeleton';

const Index = () => {
  const { 
    disciplines, 
    setDisciplines, 
    updateDisciplineStatus, 
    loading, 
    setLoading,
    getProgress,
    getPeriodProgress,
    canStartDiscipline
  } = useDisciplineStore();
  
  const [searchQuery, setSearchQuery] = useState('');
  const [statusFilter, setStatusFilter] = useState<string>('all');
  const [selectedPeriod, setSelectedPeriod] = useState<number>(1);
  const [warningDialog, setWarningDialog] = useState<{
    open: boolean;
    discipline: DisciplineWithRelations | null;
    reason: string;
  }>({ open: false, discipline: null, reason: '' });
  const [detailsDialog, setDetailsDialog] = useState<{
    open: boolean;
    discipline: DisciplineWithRelations | null;
  }>({ open: false, discipline: null });

  useEffect(() => {
    loadDisciplines();
  }, []);

  const loadDisciplines = async () => {
    try {
      setLoading(true);
      
      // Load disciplines with prerequisites and corequisites
      const { data: disciplinesData, error: disciplinesError } = await supabase
        .from('disciplines')
        .select(`
          *,
          prerequisites:prerequisites!prerequisites_discipline_id_fkey(
            id,
            prerequisite_id,
            prerequisite:disciplines!prerequisites_prerequisite_id_fkey(*)
          ),
          corequisites:corequisites!corequisites_discipline_id_fkey(
            id,
            corequisite_id,
            corequisite:disciplines!corequisites_corequisite_id_fkey(*)
          )
        `)
        .order('period', { ascending: true });

      if (disciplinesError) throw disciplinesError;

      // Load user progress
      const { data: { user } } = await supabase.auth.getUser();
      
      let userDisciplinesData = [];
      if (user) {
        const { data, error: userError } = await supabase
          .from('user_disciplines')
          .select('*')
          .eq('user_id', user.id);

        if (userError) throw userError;
        userDisciplinesData = data || [];
      }

      // Merge data
      const mergedDisciplines = disciplinesData?.map((d: any) => ({
        ...d,
        user_discipline: userDisciplinesData.find((ud: any) => ud.discipline_id === d.id),
      })) || [];

      setDisciplines(mergedDisciplines);
    } catch (error: any) {
      toast({
        title: 'Erro ao carregar disciplinas',
        description: error.message,
        variant: 'destructive',
      });
    } finally {
      setLoading(false);
    }
  };

  const handleStatusChange = async (disciplineId: string, newStatus: DisciplineStatus) => {
    const discipline = disciplines.find(d => d.id === disciplineId);
    if (!discipline) return;

    // Check if can start
    if (newStatus === 'EM_ANDAMENTO' && !discipline.user_discipline?.override_prerequisites) {
      const { can, reason } = canStartDiscipline(disciplineId);
      if (!can && reason) {
        setWarningDialog({ open: true, discipline, reason });
        return;
      }
    }

    await updateDisciplineInDatabase(disciplineId, newStatus, false);
  };

  const handleOverrideConfirm = async () => {
    if (!warningDialog.discipline) return;
    await updateDisciplineInDatabase(warningDialog.discipline.id, 'EM_ANDAMENTO', true);
    setWarningDialog({ open: false, discipline: null, reason: '' });
  };

  const updateDisciplineInDatabase = async (
    disciplineId: string, 
    status: DisciplineStatus, 
    override: boolean
  ) => {
    try {
      const { data: { user } } = await supabase.auth.getUser();
      if (!user) {
        toast({
          title: 'Erro',
          description: 'Você precisa estar autenticado',
          variant: 'destructive',
        });
        return;
      }

      const updateData: any = {
        user_id: user.id,
        discipline_id: disciplineId,
        status,
        override_prerequisites: override,
      };

      if (status === 'EM_ANDAMENTO') {
        updateData.started_at = new Date().toISOString();
      } else if (status === 'CONCLUIDA') {
        updateData.completed_at = new Date().toISOString();
      }

      const { error } = await supabase
        .from('user_disciplines')
        .upsert(updateData, { onConflict: 'user_id,discipline_id' });

      if (error) throw error;

      // Reload disciplines to sync with database
      await loadDisciplines();
      
      toast({
        title: 'Sucesso',
        description: 'Status atualizado!',
      });
    } catch (error: any) {
      toast({
        title: 'Erro ao atualizar status',
        description: error.message,
        variant: 'destructive',
      });
    }
  };

  const filteredDisciplines = disciplines.filter((d) => {
    const matchesSearch = 
      d.code.toLowerCase().includes(searchQuery.toLowerCase()) ||
      d.name.toLowerCase().includes(searchQuery.toLowerCase());
    
    const matchesStatus = 
      statusFilter === 'all' || 
      (d.user_discipline?.status || 'NAO_INICIADA') === statusFilter;
    
    return matchesSearch && matchesStatus;
  });

  const periodDisciplines = filteredDisciplines.filter(
    d => d.period === selectedPeriod && !d.is_optional
  );
  
  const optionalDisciplines = filteredDisciplines.filter(d => d.is_optional);
  
  const progress = getProgress();
  const periodProgress = getPeriodProgress(selectedPeriod);

  const periods = Array.from(new Set(disciplines.map(d => d.period).filter(Boolean))) as number[];

  return (
    <div className="min-h-screen bg-background">
      {/* Header */}
      <header className="sticky top-0 z-50 w-full border-b bg-background/95 backdrop-blur supports-[backdrop-filter]:bg-background/60">
        <div className="container flex h-16 items-center justify-between">
          <div className="flex items-center gap-2">
            <GraduationCap className="h-6 w-6" />
            <h1 className="text-xl font-bold">Monitoramento de Disciplinas</h1>
          </div>
          <div className="flex items-center gap-2">
            <ThemeToggle />
            <UserMenu />
          </div>
        </div>
      </header>

      <main className="container py-6 space-y-6">
        {/* Progress Cards */}
        <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
          <ProgressCard
            title="Progresso Geral"
            completed={progress.completed}
            total={progress.total}
            percentage={progress.percentage}
          />
          <ProgressCard
            title={`Progresso do ${selectedPeriod}º Período`}
            completed={periodProgress.completed}
            total={periodProgress.total}
            percentage={periodProgress.percentage}
          />
        </div>

        {/* Filters */}
        <div className="flex flex-col sm:flex-row gap-4">
          <div className="relative flex-1">
            <Search className="absolute left-3 top-1/2 -translate-y-1/2 h-4 w-4 text-muted-foreground" />
            <Input
              placeholder="Buscar por código ou nome..."
              value={searchQuery}
              onChange={(e) => setSearchQuery(e.target.value)}
              className="pl-10"
            />
          </div>
          <Select value={statusFilter} onValueChange={setStatusFilter}>
            <SelectTrigger className="w-full sm:w-[200px]">
              <Filter className="h-4 w-4 mr-2" />
              <SelectValue placeholder="Filtrar status" />
            </SelectTrigger>
            <SelectContent>
              <SelectItem value="all">Todos</SelectItem>
              <SelectItem value="NAO_INICIADA">Não Iniciada</SelectItem>
              <SelectItem value="EM_ANDAMENTO">Em Andamento</SelectItem>
              <SelectItem value="CONCLUIDA">Concluída</SelectItem>
              <SelectItem value="BLOQUEADA">Bloqueada</SelectItem>
            </SelectContent>
          </Select>
        </div>

        {/* Tabs */}
        <Tabs value="periods" className="space-y-4">
          <TabsList>
            <TabsTrigger value="periods">Por Período</TabsTrigger>
            <TabsTrigger value="optional">Optativas</TabsTrigger>
          </TabsList>
          
          <TabsContent value="periods" className="space-y-4">
            {/* Period Selector */}
            <div className="flex gap-2 overflow-x-auto pb-2">
              {periods.map((period) => (
                <Button
                  key={period}
                  variant={selectedPeriod === period ? 'default' : 'outline'}
                  size="sm"
                  onClick={() => setSelectedPeriod(period)}
                >
                  {period}º Período
                </Button>
              ))}
            </div>
            
            {/* Disciplines Grid */}
            {loading ? (
              <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
                {[...Array(6)].map((_, i) => (
                  <Skeleton key={i} className="h-[250px]" />
                ))}
              </div>
            ) : periodDisciplines.length > 0 ? (
              <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
                {periodDisciplines.map((discipline) => {
                  const { can, reason } = canStartDiscipline(discipline.id);
                  return (
                    <DisciplineCard
                      key={discipline.id}
                      discipline={discipline}
                      onStatusChange={handleStatusChange}
                      onViewDetails={(d) => setDetailsDialog({ open: true, discipline: d })}
                      canStart={can}
                      reason={reason}
                    />
                  );
                })}
              </div>
            ) : (
              <div className="text-center py-12 text-muted-foreground">
                Nenhuma disciplina encontrada
              </div>
            )}
          </TabsContent>
          
          <TabsContent value="optional" className="space-y-4">
            {loading ? (
              <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
                {[...Array(6)].map((_, i) => (
                  <Skeleton key={i} className="h-[250px]" />
                ))}
              </div>
            ) : optionalDisciplines.length > 0 ? (
              <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
                {optionalDisciplines.map((discipline) => {
                  const { can, reason } = canStartDiscipline(discipline.id);
                  return (
                    <DisciplineCard
                      key={discipline.id}
                      discipline={discipline}
                      onStatusChange={handleStatusChange}
                      onViewDetails={(d) => setDetailsDialog({ open: true, discipline: d })}
                      canStart={can}
                      reason={reason}
                    />
                  );
                })}
              </div>
            ) : (
              <div className="text-center py-12 text-muted-foreground">
                Nenhuma disciplina optativa encontrada
              </div>
            )}
          </TabsContent>
        </Tabs>
      </main>

      {/* Dialogs */}
      <PrerequisiteWarningDialog
        open={warningDialog.open}
        onOpenChange={(open) => !open && setWarningDialog({ open: false, discipline: null, reason: '' })}
        discipline={warningDialog.discipline}
        reason={warningDialog.reason}
        onConfirm={handleOverrideConfirm}
      />
      
      <DisciplineDetailsDialog
        open={detailsDialog.open}
        onOpenChange={(open) => !open && setDetailsDialog({ open: false, discipline: null })}
        discipline={detailsDialog.discipline}
      />
    </div>
  );
};

export default Index;
