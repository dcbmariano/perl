my %aminoacidos = (
	polares => ["Aspartato","Glutamato"],
	apolares => ["Alanina","Cisteina"]	
);

print $aminoacidos{polares}[0]; # Aspartato
print $aminoacidos{apolares}[1]; # Cisteina