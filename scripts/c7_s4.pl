use strict;

sub teste_variaveis{

	print our $i;

	$i = "Podemos modificar variaveis globais em qualquer parte do codigo.\n";

}

our $i = "Isso eh uma variavel global.\n";
teste_variaveis();
print $i;