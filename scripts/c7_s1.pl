use strict;

# Detectando multiplos de cinco
my $i;

# Subrotinas
sub multiplo_de_cinco{
	print " (SIM), ";
}

sub nao_multiplo_de_cinco{
	print " (NAO), ";
}

print "Detectando numeros entre 1 e 20 multiplos de cinco:\n";

# Laco principal
for($i = 1; $i <= 20; $i++){
	
	print "$i";

	# Verifica se a divisao de $i por 5 nao tem resto
	if($i % 5 == 0){
		multiplo_de_cinco();
	}
	else{
		nao_multiplo_de_cinco();
	}

}

# 1 (NAO), 2 (NAO), 3 (NAO), 4 (NAO), 5 (SIM), 
# 6 (NAO), 7 (NAO), 8 (NAO), 9 (NAO), 10 (SIM), 
# 11 (NAO), 12 (NAO), 13 (NAO), 14 (NAO), 15 (SIM), 
# 16 (NAO), 17 (NAO), 18 (NAO), 19 (NAO), 20 (SIM),