use strict;

# Detectando multiplos de cinco
my $i;

# Subrotinas
sub testa_multiplo_de_cinco{
	my $argumento = $_[0];
	
	if($argumento % 5 == 0){
		print "$argumento (SIM), ";
	}
	else{
		print "$argumento (NAO), ";
	}	
}

print "Detectando numeros entre 1 e 20 multiplos de cinco:\n";

# Laco principal
for($i = 1; $i <= 20; $i++){

	testa_multiplo_de_cinco($i);

}
# Detectando numeros entre 1 e 20 multiplos de cinco:
# 1 (NAO), 2 (NAO), 3 (NAO), 4 (NAO), 5 (SIM), 
# 6 (NAO), 7 (NAO), 8 (NAO), 9 (NAO), 10 (SIM), 
# 11 (NAO), 12 (NAO), 13 (NAO), 14 (NAO), 15 (SIM), 
# 16 (NAO), 17 (NAO), 18 (NAO), 19 (NAO), 20 (SIM),