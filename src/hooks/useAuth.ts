import { useContext } from 'react';
import { AuthContext } from '@/contexts/AuthContext';
import { AuthContextValue } from '@/types/auth';

/**
 * Hook to access authentication context
 * @throws Error if used outside AuthProvider
 * @returns Authentication context value with user, session and auth methods
 */
export const useAuth = (): AuthContextValue => {
  const context = useContext(AuthContext);
  
  if (context === undefined) {
    throw new Error('useAuth must be used within an AuthProvider');
  }
  
  return context;
};
