my $string = "O rato roeu a roupa do rei de Roma.\n";

print substr($string,0,6);            # O rato
print "\n";
print substr($string,23);             # rei de Roma.
print "\n";
print substr($string,-6);             # Roma.
print "\n";
print substr($string,-13,3);          # rei
print "\n";
print substr($string,-9,-7);          # de
print "\n";
print substr($string,2,4,"cachorro"); # rato
print "\n";

print $string;
# O cachorro roeu a roupa do rei de Roma.