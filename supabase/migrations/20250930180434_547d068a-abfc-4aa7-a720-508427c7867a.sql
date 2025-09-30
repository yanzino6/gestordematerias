-- Create courses table
CREATE TABLE public.courses (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  name text NOT NULL,
  code text NOT NULL UNIQUE,
  shift text CHECK (shift IN ('diurno', 'noturno', 'vespertino')),
  created_at timestamptz DEFAULT now()
);

-- Enable RLS on courses
ALTER TABLE public.courses ENABLE ROW LEVEL SECURITY;

-- Courses are viewable by everyone
CREATE POLICY "Courses are viewable by everyone"
ON public.courses
FOR SELECT
USING (true);

-- Create profiles table
CREATE TABLE public.profiles (
  id uuid PRIMARY KEY REFERENCES auth.users(id) ON DELETE CASCADE,
  full_name text,
  course_id uuid REFERENCES public.courses(id),
  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now()
);

-- Enable RLS on profiles
ALTER TABLE public.profiles ENABLE ROW LEVEL SECURITY;

-- Users can view their own profile
CREATE POLICY "Users can view their own profile"
ON public.profiles
FOR SELECT
USING (auth.uid() = id);

-- Users can insert their own profile
CREATE POLICY "Users can insert their own profile"
ON public.profiles
FOR INSERT
WITH CHECK (auth.uid() = id);

-- Users can update their own profile
CREATE POLICY "Users can update their own profile"
ON public.profiles
FOR UPDATE
USING (auth.uid() = id);

-- Add course_id to disciplines table
ALTER TABLE public.disciplines ADD COLUMN course_id uuid REFERENCES public.courses(id);

-- Insert the 8 courses
INSERT INTO public.courses (name, code, shift) VALUES
('Engenharia de Computação', 'ENG_COMP', 'diurno'),
('Engenharia Elétrica', 'ENG_ELET', 'diurno'),
('Engenharia Civil', 'ENG_CIVIL', 'diurno'),
('Engenharia de Produção', 'ENG_PROD_NOT', 'noturno'),
('Engenharia de Produção', 'ENG_PROD_VESP', 'vespertino'),
('Ciência da Computação', 'CC', 'diurno'),
('Engenharia Mecânica', 'ENG_MEC', 'diurno'),
('Engenharia Ambiental', 'ENG_AMB', 'diurno');

-- Update existing disciplines to be associated with Engenharia de Computação
UPDATE public.disciplines 
SET course_id = (SELECT id FROM public.courses WHERE code = 'ENG_COMP')
WHERE course_id IS NULL;

-- Create trigger function to create profile on user signup
CREATE OR REPLACE FUNCTION public.handle_new_user()
RETURNS trigger
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
BEGIN
  INSERT INTO public.profiles (id, full_name)
  VALUES (
    new.id, 
    COALESCE(new.raw_user_meta_data->>'name', new.email)
  );
  RETURN new;
END;
$$;

-- Trigger to create profile automatically
CREATE TRIGGER on_auth_user_created
  AFTER INSERT ON auth.users
  FOR EACH ROW EXECUTE FUNCTION public.handle_new_user();

-- Trigger to update updated_at on profiles
CREATE TRIGGER update_profiles_updated_at
  BEFORE UPDATE ON public.profiles
  FOR EACH ROW
  EXECUTE FUNCTION public.update_updated_at_column();