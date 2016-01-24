my @aminoacidos = ("Alanina","Cisteina","Aspartato");

# Retorna o tamanho do array
my $numero_de_elementos = @aminoacidos;

# Converte array em uma variavel escalar
my $conteudo_array = "@aminoacidos";

print "O array \@aminoacidos possui $numero_de_elementos elementos. Sao eles: $conteudo_array.\n";
# O array @aminoacidos possui 3 elementos. Sao eles: Alanina Cisteina Aspartato.