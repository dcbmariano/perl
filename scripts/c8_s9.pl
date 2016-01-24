# perl c8_s9.pl arquivo4.txt
open (GBK, $ARGV[0]);

while(my $linha = <GBK>){
	if ($linha =~ /product="(.*)"/){
		print "$1\n";
	}
}

#hypothetical protein
#hypothetical protein
#hypothetical protein
#hypothetical protein