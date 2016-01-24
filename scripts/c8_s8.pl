# Funcao split
my $string = "Expressões regulares, regex ou ER, são técnicas para busca de padrões, extração ou substituição de cadeias de caracteres de forma concisa e flexível.";
my @palavras = split(/\s+/,$string);
my $numero_palavras = @palavras;
print "Detectamos um total de $numero_palavras palavras.\n";
# Detectamos um total de 23 palavras.

# Funcao grep
my @aminoacidos = ("Alanina","Cisteina","Aspartato","Glutamato","Fenilalanina","Glicina","Histidina");
my @polares_negativo = grep(/ato$/,@aminoacidos);
print "polares_negativo: ";
print "@polares_negativo \n";
# polares_negativo: Aspartato Glutamato