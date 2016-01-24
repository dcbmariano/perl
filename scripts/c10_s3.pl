use Bio::Seq;

my $seq = Bio::Seq->new(-id => 'seq_teste', -seq => 'ATCGGT', -alphabet => 'dna');

print $seq->seq." (DNA)\n".$seq->transcribe->seq." (RNA)\n";
#ATCGGT (DNA)
#AUCGGU (RNA)