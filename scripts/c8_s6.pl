use strict;

# Outros metacaracteres
my @lista = ("Alanina","Cisteina","Aspartato","Glutamato","Fenilalanina","Glicina","Histidina");

foreach my $l(@lista){
	# Testando |
	if($l =~ /Alanina|Aspartato/){
		print "|: $l\n";
	}

	# Integrando | com ()
	if($l =~ /Gl(i|u)/){
		print "(|): $l\n";
	}
}

# |: Alanina
# |: Aspartato
# (|): Glutamato
# (|): Glicina