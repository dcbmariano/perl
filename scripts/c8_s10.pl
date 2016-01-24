use strict;

# perl c8_s10.pl arquivo4.txt
open (GBK, $ARGV[0]);

# Variavel auxiliar
my $mais_linhas = 0;
my $translation;

while(my $linha = <GBK>){

	# Extrai o nome do produto da CDS atual
	if ($linha =~ /product="(.*)"/){
		print "$1: ";
	}

	# Valida se o translation tem mais de uma linha
	if($mais_linhas == 1){
		if ($linha =~ /(.*)"/){
			$translation = $1;
			$translation =~ s/\s//g;
			print $translation."\n";

			# Nao ha mais linhas: zera a variavel mais_linhas
			$mais_linhas = 0;
		}
		elsif($linha =~ /\ (.*)\n/){
			$translation = $1;
			$translation =~ s/\s//g;
			print $translation;
		}
	}

	# resultado em 1 linha
	if ($linha =~ /translation="(.*)"/){
		print "$1\n";
	}

	#resultado em mais de uma linha
	elsif ($linha =~ /translation="(.*)/){
		$translation = $1;
		$translation =~ s/\s//g; # apaga espacos e quebras de linha
		print $translation;
		$mais_linhas = 1;
	}

}

# hypothetical protein: MHGCIFFTSNFSIKKLSLKQLFFGTLVKSLFTPVAETLIFNSFLKVVRIAAFSNQFYAAIRILFQSCQIQETSSSNQALVC
# hypothetical protein: MKKLVLLFFLSIAILAGSVTISHAQTFGPVFLVEYNTDRQGGDIRSGFPVGNVGQCMNECASSSQCRAFTFVDVNQQPPNYNNNRPLCWLKRSVPGKRRNSGMITGVRQ
# hypothetical protein: MTALAGLKDAQLFANGVYSAWEWVKACDGIRWFTDGERRYGQELWQLASVYLKGDECHPDYGHRKVWREGLEVVMKVKGSQGNRRVEWVKTEHPFTAISPRSEIHANHNEAHNAALRRRCSAYRRRQNLYAKKRLGLQRVLDVQRLIHNWVRPHWGLSKQTTPAMEMGFCSRPLSTLELLTNKGFRYVPC
# hypothetical protein: MECPYCQSEKILKRGFDSLQDGTLVQRYQCKDCNRRFNERTGTPMARLRTASSVVSYAIKARTEGMGVRSAGRTFGKSHTTIMRWEKRLADQAQNWSPPRTSSL
