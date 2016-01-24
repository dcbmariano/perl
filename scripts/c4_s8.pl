my @aminoacidos = ("Alanina","Cisteina","Aspartato");

# Recebe os dois primeiros elementos de @aminoacidos
(my $um, my $dois) = @aminoacidos;
print $um."\n"; # Alanina
print $dois."\n"; # Cisteina

# Atribui duas variaveis de uma vez
(my $um_copia,my $dois_copia) = ($um, $dois);
print $um_copia."\n"; # Alanina
print $dois_copia."\n"; # Cisteina

# Armazena o primeiro elemento em uma variavel 
# e o resto em outro array
(my $primeiro,my @outros_elementos) = @aminoacidos;
print $primeiro."\n"; # Alanina
print "@outros_elementos\n"; # Cisteina Aspartato

# Extrai parte dos aminoácidos (de 0 ate 1)
my @alguns_aminoacidos = @aminoacidos[0..1];
print "@alguns_aminoacidos\n"; # Alanina Cisteina