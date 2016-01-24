my $frase = "Minha primeira busca por padroes usando Perl!";

if ($frase =~ /Perl/){
	print "Padrao 'Perl' encontrado na frase.\n";
}

if ($frase !~ /perl/){
	print "Padrao 'perl' nao encontrado na frase.\n";
}