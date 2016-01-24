#Titulo: par_ou_impar.pl
#Funcao: determinar se um numero eh par ou impar


# Recebe um numero digitado pelo usuario
print "Digite um numero: ";
my $num = <STDIN>;

my $resto = $num % 2;

# Testa se o numero eh par ou impar
if ($resto == 0){
	print "O numero digitado eh par.\n";
}
else{
	print "O numero digitado eh impar.\n";
}
