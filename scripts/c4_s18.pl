my %aminoacidos = (polares => ["Aspartato","Glutamato"],  apolares => ["Alanina","Cisteina"]);

print %aminoacidos;
# apolaresARRAY(0x8dad84)polaresARRAY(0x8dac54)

use Data::Dumper;

print Dumper %aminoacidos;

# $VAR1 = 'apolares';
# $VAR2 = [
#          'Alanina',
#          'Cisteina'
#        ];
# $VAR3 = 'polares';
# $VAR4 = [
#          'Aspartato',
#          'Glutamato'
#        ];