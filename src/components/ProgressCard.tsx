import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card';
import { Progress } from '@/components/ui/progress';

interface ProgressCardProps {
  title: string;
  completed: number;
  total: number;
  percentage: number;
}

export function ProgressCard({ title, completed, total, percentage }: ProgressCardProps) {
  return (
    <Card>
      <CardHeader className="pb-3">
        <CardTitle className="text-base font-medium">{title}</CardTitle>
      </CardHeader>
      <CardContent className="space-y-2">
        <div className="flex items-center justify-between text-sm">
          <span className="text-muted-foreground">
            {completed} de {total} concluídas
          </span>
          <span className="font-semibold">{percentage}%</span>
        </div>
        <Progress value={percentage} className="h-2" />
      </CardContent>
    </Card>
  );
}
