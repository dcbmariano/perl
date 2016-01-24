# Calculadora

my $num1;
my $operador;
my $operacao;

print "CALCULADORA";

print "\n\n";

print "Digite o primeiro numero: ";
chomp($num1 = <STDIN>);

print "\n";

print "Digite a operacao desejada: \
1 para soma \
2 para subracao \
3 para divisao \
4 para multiplicacao: ";

chomp($operador = <STDIN>);

print "\n";

print "Digite o segundo numero: ";
chomp($num2 = <STDIN>);


# Determinando qual o operador foi utilizado
if ($operador == 1){
	$operacao = $num1 + $num2;
}

elsif ($operador == 2){
	$operacao = $num1 - $num2;
}

elsif ($operador == 3){
	$operacao = $num1 / $num2;
}

elsif ($operador == 4){
	$operacao = $num1 * $num2;
}

else {
	print "Operador invalido. Digite 1, 2, 3 ou 4.";
}

print "\n";

print "Resultado: ";
print $operacao;

print "\n";