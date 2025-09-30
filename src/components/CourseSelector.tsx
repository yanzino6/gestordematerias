import { useEffect, useState } from 'react';
import { supabase } from '@/integrations/supabase/client';
import { Course } from '@/types/course';
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from '@/components/ui/select';
import { Label } from '@/components/ui/label';

interface CourseSelectorProps {
  value: string;
  onValueChange: (value: string) => void;
  error?: string;
}

export const CourseSelector = ({ value, onValueChange, error }: CourseSelectorProps) => {
  const [courses, setCourses] = useState<Course[]>([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    loadCourses();
  }, []);

  const loadCourses = async () => {
    try {
      const { data, error } = await supabase
        .from('courses')
        .select('*')
        .order('name');

      if (error) throw error;
      setCourses((data || []) as Course[]);
    } catch (error) {
      console.error('Error loading courses:', error);
    } finally {
      setLoading(false);
    }
  };

  const formatCourseName = (course: Course) => {
    if (course.shift && course.name.includes('Produção')) {
      return `${course.name} (${course.shift})`;
    }
    return course.name;
  };

  return (
    <div className="space-y-2">
      <Label htmlFor="course">Curso *</Label>
      <Select value={value} onValueChange={onValueChange} disabled={loading}>
        <SelectTrigger id="course">
          <SelectValue placeholder={loading ? "Carregando..." : "Selecione seu curso"} />
        </SelectTrigger>
        <SelectContent>
          {courses.map((course) => (
            <SelectItem key={course.id} value={course.id}>
              {formatCourseName(course)}
            </SelectItem>
          ))}
        </SelectContent>
      </Select>
      {error && <p className="text-sm text-destructive">{error}</p>}
    </div>
  );
};
