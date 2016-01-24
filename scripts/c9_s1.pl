# Hello world BioPerl

use Bio::Seq;

my $minha_sequencia = Bio::Seq->new(-seq => "AAATTTCCCGGG");

print $minha_sequencia->seq;