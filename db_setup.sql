
-- set up tables to hold basic ssb datatypes

-- set up for .tsv like import
.headers on
.separator "\t" 
--.mode tabs

drop table if exists about; 
create table about (
  author text,
  name text,
  timestamp integer
);
.import tsv/about.tsv about


drop table if exists contacts; 
create table contacts (
  author text,
  contact text,
  following boolean,
  timestamp integer
);
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
.import tsv/posts.tsv posts
