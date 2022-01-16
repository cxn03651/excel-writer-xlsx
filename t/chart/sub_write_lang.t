###############################################################################
#
# Tests for Excel::Writer::XLSX::Chart methods.
#
# Copyright 2000-2022, John McNamara, jmcnamara@cpan.org
#

use lib 't/lib';
use TestFunctions '_new_object';
use strict;
use warnings;
use Excel::Writer::XLSX::Chart;

use Test::More tests => 1;


###############################################################################
#
# Tests setup.
#
my $expected;
my $got;
my $caption;
my $chart;


###############################################################################
#
# Test the _write_lang() method.
#
$caption  = " \tChart: _write_lang()";
$expected = '<c:lang val="en-US"/>';

$chart = _new_object( \$got, 'Excel::Writer::XLSX::Chart' );

$chart->_write_lang();

is( $got, $expected, $caption );

__END__


