use Bio::Seq;

my $seq = Bio::Seq->new(-id => 'seq_teste', -seq => 'ATCGGT');

print $seq->seq."\n".$seq->revcom->seq."\n";