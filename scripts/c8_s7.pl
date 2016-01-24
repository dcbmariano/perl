my $frase = "Expressões regulares, regex ou ER, 
são técnicas para busca de padrões, 
extração ou substituição de cadeias 
de caracteres de forma concisa e flexível.
";

# Substituicao simples
$frase =~ s/ER/expressões regulares/;
print "\n########### Substituicao simples ###########\n".$frase;

# Case sensitive
$frase =~ s/expressões regulares/ER/;
print "\n########### Case sensitive ###########\n".$frase;

# Primeiro elemento
$frase =~ s/,/!/;
print "\n########### Substituindo primeiro elemento ###########\n".$frase;

# Substituicao global
$frase =~ s/,/!/g;
print "\n########### Substituindo todos os elementos ###########\n".$frase;

# Case insensitive + global
$frase =~ s/ER/expressões regulares/; # Expressões regulares, regex ou expressões regulares, 
$frase =~ s/expressões regulares/ER/gi;
print "\n########### Case insensitive ###########\n".$frase;