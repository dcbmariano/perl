use Bio::Seq;

my $seq = Bio::Seq->new(-id => 'seq1', -seq => 'ATCGGT');

print $seq->id.": ".$seq->length." pb. \n";