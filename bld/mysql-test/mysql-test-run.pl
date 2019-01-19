#!/usr/bin/perl
# Call mtr in out-of-source build
$ENV{MTR_BINDIR} = 'D:/mysql56win/bld';
chdir('D:/mysql56win/mysql-test');
exit(system($^X, 'D:/mysql56win/mysql-test/mysql-test-run.pl', @ARGV) >> 8);
