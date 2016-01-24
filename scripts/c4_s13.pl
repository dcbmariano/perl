my %aminoacidos = (polares, ["Aspartato","Glutamato"], apolares,["Alanina","Cisteina"]);

my @tipos = keys %aminoacidos;
my @aminoacidos = values %aminoacidos;

print "\nTipos: @tipos";
print "\nAminoacidos: @aminoacidos";