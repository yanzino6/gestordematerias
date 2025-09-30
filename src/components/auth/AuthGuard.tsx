import { ReactNode } from 'react';
import { Navigate } from 'react-router-dom';
import { useAuth } from '@/hooks/useAuth';
import { Skeleton } from '@/components/ui/skeleton';

interface AuthGuardProps {
  children: ReactNode;
  fallback?: ReactNode;
}

/**
 * Component that protects routes requiring authentication
 * Shows loading skeleton while checking auth state
 * Redirects to login if user is not authenticated
 */
export const AuthGuard = ({ children, fallback }: AuthGuardProps) => {
  const { user, loading, initialized } = useAuth();

  // Show loading skeleton while checking authentication
  if (loading || !initialized) {
    return (
      <div className="min-h-screen flex items-center justify-center p-4">
        <div className="w-full max-w-4xl space-y-4">
          <Skeleton className="h-16 w-full" />
          <Skeleton className="h-64 w-full" />
          <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
            <Skeleton className="h-48 w-full" />
            <Skeleton className="h-48 w-full" />
            <Skeleton className="h-48 w-full" />
          </div>
        </div>
      </div>
    );
  }

  // Redirect to login if not authenticated
  if (!user) {
    return fallback ? <>{fallback}</> : <Navigate to="/auth/login" replace />;
  }

  // User is authenticated, render protected content
  return <>{children}</>;
};
