my $blast = "blastn";
my $query = "arquivo4.fasta";
my $subject = "arquivo4.fasta";
my $opcoes = "-outfmt 6";
my $comando = "$blast -query $query -subject $subject $opcoes";
 
open (my $fh,"$comando |") or die("Não foi possível executar o comando: $comando: $!\n");

while(my $linha = <$fh>){
  my @l = split("\t",$linha);
  my $query2 = $l[0];
  my $subject2 = $l[1];
  my $identidade = $l[2];

  print "Query: $query2\nSubject: $subject2\nIdentidade: $identidade\n";
}

#Query: NC_009934
#Subject: NC_009934
#Identidade: 100.00