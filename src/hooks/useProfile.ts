import { useState, useEffect } from 'react';
import { useAuth } from './useAuth';
import { supabase } from '@/integrations/supabase/client';
import { Profile } from '@/types/course';
import { toast } from 'sonner';

export const useProfile = () => {
  const { user } = useAuth();
  const [profile, setProfile] = useState<Profile | null>(null);
  const [loading, setLoading] = useState(true);

  const loadProfile = async () => {
    if (!user) {
      setProfile(null);
      setLoading(false);
      return;
    }

    try {
      setLoading(true);
      const { data, error } = await supabase
        .from('profiles')
        .select(`
          *,
          course:courses(*)
        `)
        .eq('id', user.id)
        .single();

      if (error) throw error;
      setProfile(data as Profile);
    } catch (error) {
      console.error('Error loading profile:', error);
      toast.error('Erro ao carregar perfil');
    } finally {
      setLoading(false);
    }
  };

  const updateCourse = async (courseId: string) => {
    if (!user) return;

    try {
      const { error } = await supabase
        .from('profiles')
        .update({ course_id: courseId })
        .eq('id', user.id);

      if (error) throw error;
      
      await loadProfile();
      toast.success('Curso atualizado com sucesso!');
    } catch (error) {
      console.error('Error updating course:', error);
      toast.error('Erro ao atualizar curso');
      throw error;
    }
  };

  useEffect(() => {
    loadProfile();
  }, [user]);

  return {
    profile,
    loading,
    updateCourse,
    refreshProfile: loadProfile,
  };
};
