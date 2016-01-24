my %aminoacidos = ("A" => "Alanina", "C" => "Cisteina");

$aminoacidos{"D"} = "Aspartato";

print %aminoacidos; #DAspartatoCCisteinaAAlanina
print "\n";

delete $aminoacidos{"C"};

print %aminoacidos; #DAspartatoCCisteinaAAlanina