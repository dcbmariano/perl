use Bio::DB::GenBank;
 
my $db = Bio::DB::GenBank->new;
 
my $seq = $db->get_Seq_by_id(2);

print "ID: ".$seq->id."\nSEQ: ".$seq->seq."\n";