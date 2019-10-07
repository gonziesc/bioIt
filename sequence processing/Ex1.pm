# first, bring in the SeqIO module
use Bio::SeqIO;

# Notice that you do not have to use any Bio:SeqI
# objects, because SeqIO does this for you. In fact, it
# even knows which SeqI object to use for the provided format.

# Bring in the file and format, or die with a nice
# usage statement if one or both arguments are missing.
my $usage = "getaccs.pl file format "; 
my $file = "./sequence processing/sequence.gb"; 
my $format = "genbank";

# Now create a new SeqIO object to bring in the input
# file. The new method takes arguments in the format
# key => value, key => value. The basic keys that it
# can accept values for are '-file' which expects some
# information on how to access your data, and '-format'
# which expects one of the Bioperl-format-labels mentioned
# above. Although it is optional, it is good
# programming practice to provide > and &lt; in front of any
# filenames provided in the -file parameter. This makes the
# resulting filehandle created by SeqIO explicitly read (&lt;)
# or write(>). It will definitely help others reading your
# code understand the function of the SeqIO object.

my $inseq = Bio::SeqIO->new(-file   => "$file",
                            -format => $format, );

my %outfiles = ( 'fasta' => Bio::SeqIO->new(
                                          -file   => '>./sequence processing/out.fas',
                                          -format => 'fasta',
                                          ),
               );

# Now that we have a seq stream,
# we need to tell it to give us a $seq.
#  We do this using the 'next_seq' method of SeqIO.
while (my $seq = $inseq->next_seq) {
   @out = Bio::SeqUtils->translate_6frames($seq);
   $outfiles{'fasta'}->write_seq(@out);
}