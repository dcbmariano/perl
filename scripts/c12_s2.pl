use Bio::Structure::IO;

# Sub-rotina que converte de 3 letras para 1
sub converte_uma_letra{
	my $aa = lc $_[0];
	$aa = substr($aa,0,3);

	my %ONECODE =
    ('ala' => 'A', 'asx' => 'B', 'cys' => 'C', 'asp' => 'D',
     'glu' => 'E', 'phe' => 'F', 'gly' => 'G', 'his' => 'H',
     'ile' => 'I', 'lys' => 'K', 'leu' => 'L', 'met' => 'M',
     'asn' => 'N', 'pro' => 'P', 'gln' => 'Q', 'arg' => 'R',
     'ser' => 'S', 'thr' => 'T', 'val' => 'V', 'trp' => 'W',
     'xaa' => 'X', 'tyr' => 'Y', 'glx' => 'Z', 'ter' => '*',
     'sec' => 'U', 'pyl' => 'O', 'xle' => 'J'
     );

	return $ONECODE{$aa};
}

# Abre o arquivo PDB
my $pdb = Bio::Structure::IO->new(-file => 'arquivo5.txt',-format => 'PDB');
my $estrutura = $pdb->next_structure;

foreach my $cadeia ($estrutura->get_chains) {
    my $cadeia_id = $cadeia->id;
    print ">cadeia_$cadeia_id\n"; # imprime o cabecalho

    foreach my $residuo ($estrutura->get_residues($cadeia)) {
    	my $residuo_id = $residuo->id;
    	my $uma_letra = converte_uma_letra($residuo_id);
    	print $uma_letra;
    }
    print "\n";
}