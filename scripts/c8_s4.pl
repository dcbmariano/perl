use strict;
my $linha;

open(PDB,"arquivo5.txt");

# Percorre arquivo
while($linha = <PDB>){

	# Linhas que comecem com header
	if($linha =~ /^HEADER/){
		print "Linha com string HEADER: ";
		print $linha;
	}

	# Linhas que comecem com ATOM e tenham um S no fim
	if(($linha =~ /^ATOM/) and ($linha =~ /S  $/)){
		print "Atomo S: ";
		print $linha;
	}

	# Voce pode usar o seguinte comando para detectar linhas vazias
	# if($linha =~ /^$/){
	#	[...]
	# }
}
