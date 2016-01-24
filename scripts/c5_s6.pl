my $chave;
my $i;
my %aminoacidos = (
	polares => ["Aspartato","Glutamato"],
	apolares => ["Alanina","Cisteina"]	
);

foreach $chave(keys %aminoacidos){

	for $i( 0 .. $#{ $aminoacidos{$chave} }){
		print "chave: $chave\nvalor: $aminoacidos{$chave}[$i] \n\n";
	}

}

#chave: polares
#valor: Aspartato 

#chave: polares
#valor: Glutamato 

#chave: apolares
#valor: Alanina 

#chave: apolares
#valor: Cisteina 