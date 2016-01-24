# Execute: perl c8_s2.pl arquivo4.txt 

use strict;

my $linha;

open (GBK, $ARGV[0]);

while($linha = <GBK>){
	if ($linha =~ /product=/){
		print $linha;
	}
}

#                     /product="hypothetical protein"
#                     /product="hypothetical protein"
#                     /product="hypothetical protein"
#                     /product="hypothetical protein"