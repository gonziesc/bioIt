use Bio::Tools::Run::StandAloneBlastPlus;
my $file = "./blast/input.fas"; 

$fac = Bio::Tools::Run::StandAloneBlastPlus->new(
 -db_name => 'customdb',
 -db_data => '/Users/gonzaescandarani/Downloads/swissprot', # change to local db path
 -create => 1
);$fac->blastp(-query => $file, -outfile => './blast/blast.out');