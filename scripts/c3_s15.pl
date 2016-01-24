my $str1 = "Alanina";
my $str2 = "Aspartato";

# Verificando se strings sao identicas
if($str1 eq $str2){
	print "Strings equivalentes\n";
}
elsif($str1 ne $str2){
	print "Strings diferentes\n";
}


# Verificando ordem alfabetica
if($str1 lt $str2){
	print "\$str1 ordenada alfabeticamente antes de \$str2\n";
}
elsif($str1 gt $str2){
	print "\$str1 ordenada alfabeticamente depois de\$str2\n";
}


# Verificando ordem alfabetica (considera igualdades)
if($str1 le $str2){
	print "\$str1 eh igual ou pode ser ordenada alfabeticamente antes de \$str2\n";
}
elsif($str1 ge $str2){
	print "\$str1 eh igual ou pode ser ordenada alfabeticamente depois de \$str2\n";
}

# Comparando usando cmp
$cmp = $str1 cmp $str2;
if($cmp == -1){
	print "\$str1 ordenada alfabeticamente antes de \$str2\n";
}
elsif($cmp == 0){
	print "\$str1 igual a \$str2\n";
}
elsif($cmp == 1){
	print "\$str1 ordenada alfabeticamente depois de \$str2\n";
}
else {
	print "Erro na comparacao.\n"
}