#!/usr/bin/perl
use strict;

open FILE, '<:encoding(UTF-8)', 'uniqrefs.txt' or die $!;
while (<FILE>) {
  chomp;

  my ($orig,$ref) = split /\s+/;
  if ($orig && $ref) {
  print <<"EOS";
perl -i -p -e 's/\Q$orig\E/$ref/g' fullindex.htm
EOS
  }
}
