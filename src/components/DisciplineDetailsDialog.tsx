import {
  Dialog,
  DialogContent,
  DialogDescription,
  DialogHeader,
  DialogTitle,
} from '@/components/ui/dialog';
import { Badge } from '@/components/ui/badge';
import { DisciplineWithRelations } from '@/types/discipline';
import { Separator } from '@/components/ui/separator';

interface DisciplineDetailsDialogProps {
  open: boolean;
  onOpenChange: (open: boolean) => void;
  discipline: DisciplineWithRelations | null;
}

export function DisciplineDetailsDialog({
  open,
  onOpenChange,
  discipline,
}: DisciplineDetailsDialogProps) {
  if (!discipline) return null;

  return (
    <Dialog open={open} onOpenChange={onOpenChange}>
      <DialogContent className="max-w-2xl">
        <DialogHeader>
          <DialogTitle className="text-2xl">
            {discipline.code} - {discipline.name}
          </DialogTitle>
          <DialogDescription>
            Detalhes completos da disciplina
          </DialogDescription>
        </DialogHeader>
        
        <div className="space-y-4">
          <div className="grid grid-cols-2 gap-4">
            <div>
              <p className="text-sm font-medium text-muted-foreground">Créditos</p>
              <p className="text-lg font-semibold">{discipline.credits}</p>
            </div>
            <div>
              <p className="text-sm font-medium text-muted-foreground">Carga Horária</p>
              <p className="text-lg font-semibold">{discipline.workload}h</p>
            </div>
            <div>
              <p className="text-sm font-medium text-muted-foreground">Período</p>
              <p className="text-lg font-semibold">
                {discipline.period ? `${discipline.period}º` : 'Optativa'}
              </p>
            </div>
            <div>
              <p className="text-sm font-medium text-muted-foreground">Tipo</p>
              <Badge variant={discipline.is_optional ? 'secondary' : 'default'}>
                {discipline.is_optional ? 'Optativa' : 'Obrigatória'}
              </Badge>
            </div>
          </div>
          
          <Separator />
          
          {discipline.prerequisites && discipline.prerequisites.length > 0 && (
            <div>
              <h3 className="font-semibold mb-2">Pré-requisitos</h3>
              <div className="space-y-2">
                {discipline.prerequisites.map((p) => (
                  <div
                    key={p.id}
                    className="flex items-center gap-2 p-2 rounded-lg bg-muted"
                  >
                    <Badge variant="outline">{p.prerequisite?.code}</Badge>
                    <span className="text-sm">{p.prerequisite?.name}</span>
                  </div>
                ))}
              </div>
            </div>
          )}
          
          {discipline.corequisites && discipline.corequisites.length > 0 && (
            <div>
              <h3 className="font-semibold mb-2">Co-requisitos</h3>
              <div className="space-y-2">
                {discipline.corequisites.map((c) => (
                  <div
                    key={c.id}
                    className="flex items-center gap-2 p-2 rounded-lg bg-muted"
                  >
                    <Badge variant="outline">{c.corequisite?.code}</Badge>
                    <span className="text-sm">{c.corequisite?.name}</span>
                  </div>
                ))}
              </div>
            </div>
          )}
          
          {discipline.user_discipline && (
            <>
              <Separator />
              <div>
                <h3 className="font-semibold mb-2">Status</h3>
                <div className="space-y-2">
                  <div className="flex justify-between">
                    <span className="text-sm text-muted-foreground">Estado atual:</span>
                    <Badge>
                      {discipline.user_discipline.status === 'CONCLUIDA' && 'Concluída'}
                      {discipline.user_discipline.status === 'EM_ANDAMENTO' && 'Em Andamento'}
                      {discipline.user_discipline.status === 'NAO_INICIADA' && 'Não Iniciada'}
                      {discipline.user_discipline.status === 'BLOQUEADA' && 'Bloqueada'}
                    </Badge>
                  </div>
                  {discipline.user_discipline.override_prerequisites && (
                    <div className="flex justify-between">
                      <span className="text-sm text-muted-foreground">Quebra de pré-requisito:</span>
                      <Badge variant="destructive">Sim</Badge>
                    </div>
                  )}
                </div>
              </div>
            </>
          )}
        </div>
      </DialogContent>
    </Dialog>
  );
}
