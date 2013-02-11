# $Id: Makefile.PL,v 1.4 2004/07/04 17:04:17 comdog Exp $
use ExtUtils::MakeMaker;

require 5.006;

eval "use Test::Manifest 1.14";

WriteMakefile(
	'NAME'	       => 'Surveyor::Benchmark::HTMLEntities',
	'ABSTRACT'     => 'This is what the module does',
	'VERSION_FROM' => 'lib/',
	'LICENSE'      => 'perl',
	'AUTHOR'       => 'brian d foy <bdfoy@cpan.org>',
	
	'PREREQ_PM'    => { 
		'Test::More' => '0',
		},

	'PM'           => {
		'lib/'         => '$(INST_LIBDIR)/',
		},

	'MAN3PODS'     => {
		'lib/' => '$(INST_MAN3DIR)/Surveyor::Benchmark::HTMLEntities.3',
		},

	clean  => { FILES    => q|Surveyor-Benchmark-HTMLEntities-*| },
	);
