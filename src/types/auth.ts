import { User, Session, AuthError } from '@supabase/supabase-js';

/**
 * Represents the authentication state of the application
 */
export interface AuthState {
  /** Current authenticated user, null if not authenticated */
  readonly user: User | null;
  /** Current session, null if not authenticated */
  readonly session: Session | null;
  /** Loading state for async operations */
  readonly loading: boolean;
  /** Whether the auth state has been initialized */
  readonly initialized: boolean;
}

/**
 * Authentication context value with methods and state
 */
export interface AuthContextValue extends AuthState {
  /**
   * Sign in with email and password
   * @throws AuthError if credentials are invalid
   */
  signIn: (email: string, password: string) => Promise<void>;
  
  /**
   * Sign up a new user with email, password and name
   * @throws AuthError if registration fails
   */
  signUp: (email: string, password: string, name: string) => Promise<void>;
  
  /**
   * Sign out the current user
   */
  signOut: () => Promise<void>;
  
  /**
   * Send password reset email
   */
  resetPassword: (email: string) => Promise<void>;
  
  /**
   * Update user password
   */
  updatePassword: (newPassword: string) => Promise<void>;
}

/**
 * Login form data structure
 */
export interface LoginFormData {
  email: string;
  password: string;
}

/**
 * Registration form data structure
 */
export interface RegisterFormData {
  name: string;
  email: string;
  password: string;
  confirmPassword: string;
  courseId: string;
}

/**
 * Password reset form data structure
 */
export interface ResetPasswordFormData {
  email: string;
}
