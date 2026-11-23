create table if not exists public.natal_itens (
  id bigint generated always as identity primary key,
  cat text not null check (cat in ('Entrada','Prato','Acompanhamento','Sobremesa','Bebidas','Outros')),
  what text not null check (char_length(what) between 1 and 80),
  who text not null check (char_length(who) between 1 and 60),
  created_at timestamptz not null default now()
);
