#!/bin/bash
# dump ssb content from server to tsv files and load them into a sqlite db

SQLITE_DB=ssb_dump.db

# call scripts to dump some relevant data objects



# clobber the quotes in names in about file that will break db import
# (because we shouldn't use a tsv file for this anyway)
sed -i "s/\"//g" tsv/about.tsv
sed -i "s/\"//g" tsv/posts.tsv

# create sqlite db from ddl
echo 'loading sqlite db $SQLITE_DB'
sqlite3 $SQLITE_DB < db_setup.sql

echo 'checking how many rows were dumped vs loaded..'
wc -l tsv/about.tsv
sqlite3 $SQLITE_DB 'select count(*) from about'
wc -l tsv/contacts.tsv
sqlite3 $SQLITE_DB 'select count(*) from contacts'
wc -l tsv/posts.tsv
sqlite3 $SQLITE_DB 'select count(*) from posts'
