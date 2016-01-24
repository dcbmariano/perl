use warnings;
use strict;

# Calculadora
my $SAIR = 0;
my $num1;
my $num2;
my $operador;
my $operacao;
my $opcao;

while($SAIR == 0){

	print "CALCULADORA";

	print "\n\n";

	print "Digite o primeiro numero: ";
	chomp($num1 = <STDIN>);

	print "\n";

	print "Digite a operacao desejada: 
	1 para soma 
	2 para subracao 
	3 para divisao 
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
		system("clear"); #use system("cls") para S.O. Windows
		print "Operador invalido. Digite 1, 2, 3 ou 4. Tente novamente.\n\n§";
		next;
	}

	print "\n";

	print "Resultado: ";
	print $operacao;

	print "\n";

	# Questiona se o usuario deseja sair ou fazer outra conta
	print "Deseja sair? (S/s) SIM ou (N/n) NAO: ";
	chomp($opcao = <STDIN>);

	if(($opcao eq "S")or($opcao eq "s")){
		$SAIR = 1;
	}

	system("clear"); #use system("cls") para S.O. Windows

}