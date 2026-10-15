-- Run this SQL in Supabase Dashboard > SQL Editor.
create table if not exists public.products (
  id uuid primary key default gen_random_uuid(),
  name text not null,
  category text not null,
  price text,
  image text,
  link text not null,
  description text not null default '',
  featured boolean not null default false,
  active boolean not null default true,
  created_at timestamptz not null default now()
);
alter table public.products enable row level security;
-- Visitors can read only products marked visible.
drop policy if exists "Public can view active products" on public.products;
create policy "Public can view active products" on public.products
  for select to anon, authenticated using (active = true);
-- Authenticated users can manage products. IMPORTANT: disable public sign-ups in Supabase Auth
-- and create only your own admin user manually before using this site.
drop policy if exists "Signed-in admin can insert products" on public.products;
create policy "Signed-in admin can insert products" on public.products
  for insert to authenticated with check (true);
drop policy if exists "Signed-in admin can update products" on public.products;
create policy "Signed-in admin can update products" on public.products
  for update to authenticated using (true) with check (true);
drop policy if exists "Signed-in admin can delete products" on public.products;
create policy "Signed-in admin can delete products" on public.products
  for delete to authenticated using (true);
