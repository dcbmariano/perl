my $string = "O rato roeu a roupa do rei de Roma.\n";

my $substring_1 = substr($string, 2, 4, "tiranossauro"); #  rato
my $substring_2 = substr($string, 22, 5, "canela"); #  roupa
my $substring_3 = substr($string, -6, 4, "Buenos Aires"); #  Roma

print $string;
# O tiranossauro roeu a canela do rei de Buenos Aires.