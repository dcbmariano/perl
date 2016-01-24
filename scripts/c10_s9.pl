use Bio::DB::GenBank;
use Bio::DB::Query::GenBank;
 
my $query = "Homo sapiens[ORGN] AND beta-glucosidase[TITL]";

my $qobj = Bio::DB::Query::GenBank->new(-db => 'nucleotide',  -query => $query );
 
my $gobj = Bio::DB::GenBank->new;
 
my $sobj = $gobj->get_Stream_by_query($qobj);
 
while (my $seq = $sobj->next_seq){    

    print $seq->id. "\t".$seq->desc. "\t". $seq->length. "\n";

}