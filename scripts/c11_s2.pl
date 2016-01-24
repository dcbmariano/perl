use Bio::SearchIO;

my $blast = "blastn";
my $query = "arquivo4.fasta";
my $subject = "arquivo4.fasta";
my $opcoes = "-outfmt 5";
my $comando = "$blast -query $query -subject $subject $opcoes";
 
open (my $fh,"$comando |") or die("Não foi possível executar o comando: $comando: $!\n");

my $in = Bio::SearchIO->new(-format => 'blastxml', -fh => $fh);

while(my $r = $in->next_result){

	print "Numero de resultados: ".$r->num_hits."\n";
	print "Nome da query: ".$r->query_name."\n";
	print "Descricao: ".$r->query_description."\n";
	print "Tamanho da query: ".$r->query_length."\n";

	# Para cada resultado
    while(my $h = $r->next_hit ) {

      print "Hit: ".$h->name."\n";

    	while(my $hsp = $h->next_hsp ) {
    		print "Tamanho HSP: ". $hsp->length('total')."\n";
            print "E-value: ", $hsp->evalue."\n";
            print "Bit score: ", $hsp->score."\n";
            print "Regiao de hit (query): ",$hsp->query->start." - ".$hsp->query->end."\n";
            print "Regiao de hit (subject): ",$hsp->hit->start." - ".$hsp->hit->end."\n";
    	}
    }
    print "-----------------------------------------------------------\n";
}