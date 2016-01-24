my @produtos;
my @ordenados;

push @produtos, { nome => "A", valor => 7.80 };
push @produtos, { nome => "B", valor => 3.99 };
push @produtos, { nome => "C", valor => 5.58};

@ordenados =  reverse sort { $a->{valor} <=> $b->{valor} } @produtos;

print join "\n", map {$_->{nome}." - ".$_->{valor}} @ordenados;

print "\n";