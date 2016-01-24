use Bio::SeqIO;
my $in = Bio::SeqIO->new('-file' => "arquivo6.txt", '-format' => 'fasta');
my $out = Bio::SeqIO->new('-file' => ">arquivo6.gbk", '-format' => 'genbank');

while (my $seq = $in->next_seq()) {
	$out->write_seq($seq);
}