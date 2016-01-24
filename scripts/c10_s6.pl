use Bio::SeqIO;

# Abrindo arquivo 
my $in = Bio::SeqIO->new(-file => "arquivo6.txt", -format => "Fasta");

#contador
my $i = 0; 

while(my $seq = $in->next_seq()){
	print $seq->id.": ";
	print $seq->length." pb\n";
	$i++;
}

print "Detectamos $i sequencias.\n";
#seq1: 334 pb
#seq2: 224 pb
#seq3: 282 pb
#seq4: 227 pb
#seq5: 211 pb
#seq6: 216 pb
#seq7: 155 pb
#Detectamos 7 sequencias.