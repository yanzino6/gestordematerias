export type CourseShift = 'diurno' | 'noturno' | 'vespertino';

export interface Course {
  id: string;
  name: string;
  code: string;
  shift: CourseShift | null;
  created_at: string;
}

export interface Profile {
  id: string;
  full_name: string | null;
  course_id: string | null;
  course?: Course;
  created_at: string;
  updated_at: string;
}
