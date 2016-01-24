use strict;

my $diretorio = $ARGV[0];

opendir(diretorio, "$diretorio");
my @arquivos = readdir(diretorio);
closedir(diretorio);

my $a;
my $linha;

foreach $a(@arquivos){

	# Lendo apenas arquivos TXT
	if(substr($a, -3, 3) eq "txt"){

		print "Lendo o arquivo: $a\n";

		# Abrindo o arquivo como somente leitura
		open (ARQUIVO, $a);

		while($linha = <ARQUIVO>){
			print $linha;
		}

		print "\n\n--------- FIM DO ARQUIVO ---------–\n\n";

		close(ARQUIVO);
	}
	
}