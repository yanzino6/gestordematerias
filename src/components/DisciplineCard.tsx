import { Badge } from '@/components/ui/badge';
import { Button } from '@/components/ui/button';
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card';
import { Tooltip, TooltipContent, TooltipTrigger } from '@/components/ui/tooltip';
import { DisciplineWithRelations, DisciplineStatus } from '@/types/discipline';
import { CheckCircle2, Clock, Lock, PlayCircle, StopCircle, Info } from 'lucide-react';
import { cn } from '@/lib/utils';

interface DisciplineCardProps {
  discipline: DisciplineWithRelations;
  onStatusChange: (disciplineId: string, status: DisciplineStatus) => void;
  onViewDetails: (discipline: DisciplineWithRelations) => void;
  canStart: boolean;
  reason?: string;
}

export function DisciplineCard({ 
  discipline, 
  onStatusChange, 
  onViewDetails,
  canStart,
  reason
}: DisciplineCardProps) {
  const status = discipline.user_discipline?.status || 'NAO_INICIADA';
  
  const getStatusIcon = () => {
    switch (status) {
      case 'CONCLUIDA':
        return <CheckCircle2 className="h-4 w-4 text-green-600 dark:text-green-400" />;
      case 'EM_ANDAMENTO':
        return <Clock className="h-4 w-4 text-blue-600 dark:text-blue-400" />;
      case 'BLOQUEADA':
        return <Lock className="h-4 w-4 text-red-600 dark:text-red-400" />;
      default:
        return null;
    }
  };
  
  const getStatusColor = () => {
    switch (status) {
      case 'CONCLUIDA':
        return 'bg-green-50 border-green-200 dark:bg-green-950 dark:border-green-800';
      case 'EM_ANDAMENTO':
        return 'bg-blue-50 border-blue-200 dark:bg-blue-950 dark:border-blue-800';
      case 'BLOQUEADA':
        return 'bg-red-50 border-red-200 dark:bg-red-950 dark:border-red-800';
      default:
        return 'bg-card hover:bg-accent/50';
    }
  };
  
  const getStatusText = () => {
    switch (status) {
      case 'CONCLUIDA':
        return 'Concluída';
      case 'EM_ANDAMENTO':
        return 'Em Andamento';
      case 'BLOQUEADA':
        return 'Bloqueada';
      default:
        return 'Não Iniciada';
    }
  };

  return (
    <Card className={cn('transition-all duration-200', getStatusColor())}>
      <CardHeader className="pb-3">
        <div className="flex items-start justify-between gap-2">
          <div className="flex-1 min-w-0">
            <CardTitle className="text-base font-semibold line-clamp-2">
              {discipline.name}
            </CardTitle>
            <p className="text-xs text-muted-foreground mt-1">
              {discipline.code}
            </p>
          </div>
          <div className="flex items-center gap-1">
            {getStatusIcon()}
          </div>
        </div>
      </CardHeader>
      
      <CardContent className="space-y-3">
        <div className="flex items-center gap-2 text-xs text-muted-foreground">
          <span>{discipline.credits} créditos</span>
          <span>•</span>
          <span>{discipline.workload}h</span>
        </div>
        
        <div className="flex flex-wrap gap-1">
          {discipline.prerequisites && discipline.prerequisites.length > 0 && (
            <Tooltip>
              <TooltipTrigger asChild>
                <Badge variant="outline" className="text-xs cursor-help">
                  Pré-req: {discipline.prerequisites.length}
                </Badge>
              </TooltipTrigger>
              <TooltipContent>
                <div className="space-y-1">
                  {discipline.prerequisites.map((p) => (
                    <div key={p.id} className="text-xs">
                      {p.prerequisite?.name}
                    </div>
                  ))}
                </div>
              </TooltipContent>
            </Tooltip>
          )}
          
          {discipline.corequisites && discipline.corequisites.length > 0 && (
            <Tooltip>
              <TooltipTrigger asChild>
                <Badge variant="outline" className="text-xs cursor-help">
                  Co-req: {discipline.corequisites.length}
                </Badge>
              </TooltipTrigger>
              <TooltipContent>
                <div className="space-y-1">
                  {discipline.corequisites.map((c) => (
                    <div key={c.id} className="text-xs">
                      {c.corequisite?.name}
                    </div>
                  ))}
                </div>
              </TooltipContent>
            </Tooltip>
          )}
          
          <Badge variant="secondary" className="text-xs">
            {getStatusText()}
          </Badge>
        </div>
        
        <div className="flex gap-2 pt-2">
          {status === 'NAO_INICIADA' && (
            <Button
              size="sm"
              variant="default"
              className="flex-1"
              onClick={() => onStatusChange(discipline.id, 'EM_ANDAMENTO')}
              disabled={!canStart && !discipline.user_discipline?.override_prerequisites}
            >
              <PlayCircle className="h-4 w-4 mr-1" />
              Cursar
            </Button>
          )}
          
          {status === 'EM_ANDAMENTO' && (
            <>
              <Button
                size="sm"
                variant="default"
                className="flex-1"
                onClick={() => onStatusChange(discipline.id, 'CONCLUIDA')}
              >
                <CheckCircle2 className="h-4 w-4 mr-1" />
                Concluir
              </Button>
              <Button
                size="sm"
                variant="outline"
                onClick={() => onStatusChange(discipline.id, 'NAO_INICIADA')}
              >
                <StopCircle className="h-4 w-4" />
              </Button>
            </>
          )}
          
          {status === 'CONCLUIDA' && (
            <Button
              size="sm"
              variant="outline"
              className="flex-1"
              onClick={() => onStatusChange(discipline.id, 'NAO_INICIADA')}
            >
              Reiniciar
            </Button>
          )}
          
          <Button
            size="sm"
            variant="ghost"
            onClick={() => onViewDetails(discipline)}
          >
            <Info className="h-4 w-4" />
          </Button>
        </div>
        
        {!canStart && reason && status === 'NAO_INICIADA' && (
          <p className="text-xs text-destructive">{reason}</p>
        )}
      </CardContent>
    </Card>
  );
}
