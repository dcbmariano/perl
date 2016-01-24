use Bio::SeqIO;

my $in = Bio::SeqIO->new('-file' => "arquivo4.txt", '-format' => 'GenBank');

my $out = Bio::SeqIO->new('-file' => ">arquivo4.fasta", '-format' => 'Fasta');

while (my $seq = $in->next_seq()) {
	$out->write_seq($seq);
}