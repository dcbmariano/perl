# Funcao chomp
print "Digite seu nome: ";
my $nome = <STDIN>;

print "Ola $nome, tudo bem com voce?";
# Sera impresso "Ola nome_digitado
# , tudo bem com voce?"

# Corrigindo o problema
chomp($nome);
print "\nOla $nome, tudo bem com voce?\n";
# Sera impresso "Ola nome_digitado, tudo bem com voce? "