use strict;

my @lista = ("Alanina","Cisteina","Aspartato","Glutamato","Fenilalanina","Glicina","Histidina");
my $l;

# Buscar palavras com as seguintes condicoes
foreach $l(@lista){

	######################## . ########################

	# Terminem com "ina" e antes tenha um caracter "i" seguido de qualquer outro
	if ($l =~ /i.ina/){
		print "i.na:\t$l\n"; # Glicina Histidina
	}

	# Tem 10 caracteres ou mais, e termina com "ina"
	if ($l =~ /.......ina/){
		print "...na:\t$l\n"; # Fenilalanina
	}


	######################## [] ########################

	# Tenha o caractere A
	if ($l =~ /[A e]/){
		print "[A e]:\t$l\n"; # Alanina Aspartato Cisteina Fenilalanina
	}

	# Tenham alguns dos caracteres: A, B, C, D, E ou F 
	if ($l =~ /[A-F]/){
		print "[A-F]:\t$l\n"; # Alanina Cisteina Aspartato Fenilalanina
	}

	# Tenham alguns dos caracteres: A, B, C, D, E ou G
	if ($l =~ /[A-E G]/){
		print "[A-EG]:\t$l\n"; # Alanina Cisteina Aspartato Glutamato Glicina
	}


	######################## [^] ########################

	# Todos diferentes de Alanina
	if ($l =~ /[^Alanina]/){
		print "[^Ala]:\t$l\n"; # Cisteina, Aspartato, Glutamato, Fenilalanina, Glicina, Histidina
	}

	# Todos diferentes de Cisteina e Glutamato 
	if ($l =~ /[^Cisteina Glutamato]/){
		print "[^CG]:\t$l\n"; # Alanina Aspartato Fenilalanina Glicina Histidina
	}

}