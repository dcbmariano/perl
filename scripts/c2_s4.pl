use warnings;
print "Digite sua idade: \n";
my $idade = <STDIN>; 
 
if (($idade > 0) and ($idade < 16)){
	print "Voce nao pode votar!\n";
}
elsif ((($idade >= 16)and($idade < 18))or($idade >= 70)){
	print "Voto opcional!\n";
}
elsif (($idade >= 18) and ($idade < 70)){
	print "Voto obrigatorio!\n";
}
else{
	print "Idade invalida!\n";
}