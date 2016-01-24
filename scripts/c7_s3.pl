use strict;
my $i;
my $i2;

# Subrotinas
sub testa_multiplo_de_cinco{
	my $n = $_[0];
	
	if($n % 5 == 0){

		my $n2 = calcula_quadrado($n);

		return $n2;
	}
	else{
		return -1;
	}
}

sub calcula_quadrado{
	my $n = $_[0];

	return $n**2;
}

print "Detectando o quadrado de numeros entre 1 e 20 multiplos de cinco:\n";

# Laco principal
for($i = 1; $i <= 20; $i++){

	$i2 = testa_multiplo_de_cinco($i);

	if($i2 != -1){
		print "O quadrado de $i eh $i2\n";
	}
}

# O quadrado de 5 eh 25
# O quadrado de 10 eh 100
# O quadrado de 15 eh 225
# O quadrado de 20 eh 400