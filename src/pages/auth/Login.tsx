import { useEffect } from 'react';
import { useNavigate } from 'react-router-dom';
import { useAuth } from '@/hooks/useAuth';
import { LoginForm } from '@/components/auth/LoginForm';
import { GraduationCap } from 'lucide-react';

const Login = () => {
  const { user, initialized } = useAuth();
  const navigate = useNavigate();

  // Redirect authenticated users to home
  useEffect(() => {
    if (initialized && user) {
      navigate('/');
    }
  }, [user, initialized, navigate]);

  return (
    <div className="min-h-screen flex items-center justify-center bg-background p-4">
      <div className="w-full max-w-md space-y-8">
        <div className="flex flex-col items-center text-center space-y-2">
          <div className="flex items-center justify-center w-16 h-16 rounded-full bg-primary/10">
            <GraduationCap className="h-8 w-8 text-primary" />
          </div>
          <h1 className="text-3xl font-bold tracking-tight">Gestor de Matérias</h1>
          <p className="text-muted-foreground">
            Acompanhe seu progresso acadêmico
          </p>
        </div>
        
        <LoginForm />
      </div>
    </div>
  );
};

export default Login;
