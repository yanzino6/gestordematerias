import {
  AlertDialog,
  AlertDialogAction,
  AlertDialogCancel,
  AlertDialogContent,
  AlertDialogDescription,
  AlertDialogFooter,
  AlertDialogHeader,
  AlertDialogTitle,
} from '@/components/ui/alert-dialog';
import { DisciplineWithRelations } from '@/types/discipline';

interface PrerequisiteWarningDialogProps {
  open: boolean;
  onOpenChange: (open: boolean) => void;
  discipline: DisciplineWithRelations | null;
  reason: string;
  onConfirm: () => void;
}

export function PrerequisiteWarningDialog({
  open,
  onOpenChange,
  discipline,
  reason,
  onConfirm,
}: PrerequisiteWarningDialogProps) {
  return (
    <AlertDialog open={open} onOpenChange={onOpenChange}>
      <AlertDialogContent>
        <AlertDialogHeader>
          <AlertDialogTitle>Aviso de Pré-requisitos</AlertDialogTitle>
          <AlertDialogDescription className="space-y-2">
            <p>
              Você ainda não cumpre os requisitos para realizar a disciplina{' '}
              <strong>{discipline?.code} - {discipline?.name}</strong>.
            </p>
            <p className="text-destructive font-medium">{reason}</p>
            <p>Deseja marcar como "Cursando" mesmo assim?</p>
          </AlertDialogDescription>
        </AlertDialogHeader>
        <AlertDialogFooter>
          <AlertDialogCancel>Não</AlertDialogCancel>
          <AlertDialogAction onClick={onConfirm}>
            Sim, realizei quebra de pré-requisito
          </AlertDialogAction>
        </AlertDialogFooter>
      </AlertDialogContent>
    </AlertDialog>
  );
}
