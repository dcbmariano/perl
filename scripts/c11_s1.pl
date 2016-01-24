my $blast = "blastn";
my $query = "arquivo4.fasta";
my $subject   = "arquivo4.fasta";
my $opcoes = "";
my $comando = "$blast -query $query -subject $subject $opcoes";
 
open (my $fh,"$comando |") or die("Não foi possível executar o comando: $comando: $!\n");

while(my $l = <$fh>){
	print $l;
}