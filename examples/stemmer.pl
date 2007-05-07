#!/usr/bin/perl
# $Id$
# $Source$
# $Author$
# $HeadURL$
# $Revision$
# $Date$
use strict;
use warnings;
use Lingua::Stem::Snowball::Se;
use vars qw($VERSION);
$VERSION = 1.1;

my $stemmer = Lingua::Stem::Snowball::Se->new(use_cache => 1);
while (my $line = <>) {
	chomp $line;
	foreach my $word ((split m/\s+/xms, $line)) {
		my $stemmed = $stemmer->stem($word);
		print "$stemmed\n";
	}
}
