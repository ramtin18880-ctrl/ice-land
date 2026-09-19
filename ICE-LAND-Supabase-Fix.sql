-- ICE LAND - Supabase setup/fix
-- Run this once in Supabase > SQL Editor

ALTER TABLE public.users
  ADD COLUMN IF NOT EXISTS email TEXT;

ALTER TABLE public.tickets
  ALTER COLUMN user_id DROP NOT NULL;

ALTER TABLE public.users DISABLE ROW LEVEL SECURITY;
ALTER TABLE public.tickets DISABLE ROW LEVEL SECURITY;

GRANT SELECT, INSERT, UPDATE, DELETE
ON public.users
TO anon, authenticated;

GRANT SELECT, INSERT, UPDATE, DELETE
ON public.tickets
TO anon, authenticated;
