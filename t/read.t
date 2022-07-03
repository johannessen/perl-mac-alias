#!perl

use v5.26;
use warnings;
use lib 'lib';

use Test::More;
use Test::Exception;
use Test::Warnings;

plan tests => 8 + 5 + 1;


use Mac::Alias qw(read_alias read_alias_mac);

my ($r);


lives_and {
	is $r = read_alias 't/eg/folder.alias', '/System/Library/Perl';
} 'read_alias folder.alias';
isa_ok $r, Path::Tiny::, 'read_alias folder.alias type';

lives_and {
	is $r = read_alias 't/eg/removable.alias', '/Volumes/SANDISK/untitled';
} 'read_alias removable.alias';
isa_ok $r, Path::Tiny::, 'read_alias removable.alias type';

lives_and {
	is $r = read_alias 't/eg/root.alias', '/';
} 'read_alias root.alias';
isa_ok $r, Path::Tiny::, 'read_alias root.alias type';

lives_and {
	is scalar read_alias __FILE__, undef;
} 'read_alias self lives';

lives_and {
	is scalar read_alias '.', undef;
} 'read_alias dir lives';


# These aliases cannot be resolved by the Finder because the
# kIsAlias flag isn' set.
lives_and {
	ok ! read_alias_mac 't/eg/folder.alias';
} 'read_alias_mac folder.alias lives';
lives_and {
	ok ! read_alias_mac 't/eg/removable.alias';
} 'read_alias_mac removable.alias lives';
lives_and {
	ok ! read_alias_mac 't/eg/root.alias';
} 'read_alias_mac root.alias lives';
lives_and {
	ok ! read_alias_mac __FILE__;
} 'read_alias_mac self lives';
lives_and {
	ok ! read_alias_mac '.';
} 'read_alias_mac dir lives';


done_testing;
