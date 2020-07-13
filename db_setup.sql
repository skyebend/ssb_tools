
-- set up tables to hold basic ssb datatypes
drop table if exists about; 
create table about (
  author text,
  name text,
  timestamp integer
);
.mode tabs
.import tsv/about.tsv about


drop table if exists contacts; 
create table contacts (
  author text,
  contact text,
  following boolean,
  timestamp integer
);
.mode tabs
.import tsv/contacts.tsv contacts

drop table if exists posts; 
create table posts (
  key text,
  previous text,
  sequence integer,
  author text,
  timestamp integer,
  root text,
  fork text,
  channel text
);
.mode tabs
.import tsv/posts.tsv posts
