use strict;

# Lendo varios arquivos
my $a;
my $linha;

# Para cada arquivo enviado como parametro:
foreach $a (@ARGV){

	print "Lendo o arquivo: $a\n";

	# Abrindo o arquivo como somente leitura
	open (ARQUIVO, $a);

	while($linha = <ARQUIVO>){
		print $linha;
	}

	print "\n\n--------- FIM DO ARQUIVO ---------–\n\n";

	close(ARQUIVO);

}