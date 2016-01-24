#Titulo: if_elsif_else.pl
#Funcao: determinar se um numero eh positivo ou negativo 

use warnings FATAL => qw( numeric uninitialized );

# Recebe um numero digitado pelo usuario
print "Digite um numero: ";
my $num = <STDIN>;

if ($num == 0){
	print "Numero igual a zero.\n";
}
elsif ($num > 0){
	print "Numero maior que zero.\n";
}
else{
	print "Numero menor que zero.\n";
}