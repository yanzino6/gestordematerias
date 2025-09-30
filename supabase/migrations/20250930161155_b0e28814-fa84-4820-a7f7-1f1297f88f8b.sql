-- Create enum for discipline status
CREATE TYPE discipline_status AS ENUM ('NAO_INICIADA', 'EM_ANDAMENTO', 'CONCLUIDA', 'BLOQUEADA');

-- Create disciplines table
CREATE TABLE public.disciplines (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  code text NOT NULL UNIQUE,
  name text NOT NULL,
  credits integer NOT NULL,
  workload integer NOT NULL,
  period integer,
  is_optional boolean DEFAULT false,
  created_at timestamptz DEFAULT now()
);

-- Create prerequisites table (many-to-many)
CREATE TABLE public.prerequisites (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  discipline_id uuid NOT NULL REFERENCES public.disciplines(id) ON DELETE CASCADE,
  prerequisite_id uuid NOT NULL REFERENCES public.disciplines(id) ON DELETE CASCADE,
  UNIQUE(discipline_id, prerequisite_id)
);

-- Create corequisites table (many-to-many)
CREATE TABLE public.corequisites (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  discipline_id uuid NOT NULL REFERENCES public.disciplines(id) ON DELETE CASCADE,
  corequisite_id uuid NOT NULL REFERENCES public.disciplines(id) ON DELETE CASCADE,
  UNIQUE(discipline_id, corequisite_id)
);

-- Create user_disciplines table to track user progress
CREATE TABLE public.user_disciplines (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id uuid NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  discipline_id uuid NOT NULL REFERENCES public.disciplines(id) ON DELETE CASCADE,
  status discipline_status DEFAULT 'NAO_INICIADA',
  override_prerequisites boolean DEFAULT false,
  started_at timestamptz,
  completed_at timestamptz,
  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now(),
  UNIQUE(user_id, discipline_id)
);

-- Enable RLS
ALTER TABLE public.disciplines ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.prerequisites ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.corequisites ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.user_disciplines ENABLE ROW LEVEL SECURITY;

-- RLS Policies for disciplines (public read)
CREATE POLICY "Disciplines are viewable by everyone"
  ON public.disciplines FOR SELECT
  USING (true);

-- RLS Policies for prerequisites (public read)
CREATE POLICY "Prerequisites are viewable by everyone"
  ON public.prerequisites FOR SELECT
  USING (true);

-- RLS Policies for corequisites (public read)
CREATE POLICY "Corequisites are viewable by everyone"
  ON public.corequisites FOR SELECT
  USING (true);

-- RLS Policies for user_disciplines
CREATE POLICY "Users can view their own progress"
  ON public.user_disciplines FOR SELECT
  USING (auth.uid() = user_id);

CREATE POLICY "Users can insert their own progress"
  ON public.user_disciplines FOR INSERT
  WITH CHECK (auth.uid() = user_id);

CREATE POLICY "Users can update their own progress"
  ON public.user_disciplines FOR UPDATE
  USING (auth.uid() = user_id);

CREATE POLICY "Users can delete their own progress"
  ON public.user_disciplines FOR DELETE
  USING (auth.uid() = user_id);

-- Create function to update updated_at timestamp
CREATE OR REPLACE FUNCTION update_updated_at_column()
RETURNS TRIGGER AS $$
BEGIN
  NEW.updated_at = now();
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Create trigger for user_disciplines
CREATE TRIGGER update_user_disciplines_updated_at
  BEFORE UPDATE ON public.user_disciplines
  FOR EACH ROW
  EXECUTE FUNCTION update_updated_at_column();