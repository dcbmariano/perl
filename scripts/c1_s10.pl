# Recebe um numero digitado pelo usuario
print "Digite um numero: ";
my $num = <STDIN>;

my $resto = $num % 2;

print "Seu numero eh: ";
print $num;
print "\nO resto da divisão por 2 eh: ";
print $resto."\n";