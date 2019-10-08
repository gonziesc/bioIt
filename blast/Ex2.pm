use Bio::Tools::Run::StandAloneBlastPlus;
my $file = "./blast/input.fas"; 

my $blast = Bio::Tools::Run::StandAloneBlastPlus->new(-db_name => 'swissprot', -remote => 1);
$blast->blastp(-query => $file, -outfile => './blast/blast.out');