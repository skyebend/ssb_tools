#!/bin/bash
# dump ssb content from server to tsv files and load them into a sqlite db

SQLITE_DB=ssb_dump.db

# call scripts to dump some relevant data objects

# check file sices
wc -l tsv/about.tsv
wc -l tsv/contact.tsv
wc -l tsv/posts.tsv

# create sqlite db from ddl
sqlite3 $SQLITE_DB < db_setup.sql

