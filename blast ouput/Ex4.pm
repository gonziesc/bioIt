use Bio::SearchIO;
use Bio::DB::GenPept;

my $input_file = Bio::SearchIO->new(-file => "./blast.out",-format => 'blast');

my $db_genbank = Bio::DB::GenPept->new(-format => 'Fasta');

my $pattern = "Zinc";

my $result = $input_file->next_result;
my $coincidencias = 0;
while (my $hit = $result->next_hit) {
    my $description = $hit->description;
    if (index($description, $pattern) != -1) {
        my $acc = $hit->accession;
        my $seq = $db_genbank->get_Seq_by_version($acc);
        my $outfile = ( 'fasta' => Bio::SeqIO->new(
                                          -file   => ">$acc.fas",
                                          -format => 'fasta',
                                          ),
               );
        $outfile->write_seq($seq);
    }
}
