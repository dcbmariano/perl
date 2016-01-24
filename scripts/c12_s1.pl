use Bio::Structure::IO;

my $pdb = Bio::Structure::IO->new(-file => 'arquivo5.txt',-format => 'PDB');

my $estrutura = $pdb->next_structure;

foreach my $cadeia ($estrutura->get_chains) {
   my $cadeia_id = $cadeia->id;
   foreach my $residuo ($estrutura->get_residues($cadeia)) {
      my $residuo_id = $residuo->id;
      foreach my $atomo ($estrutura->get_atoms($residuo)){
      	my $atomo_id = $atomo->id;
      	print "Cadeia: ".$cadeia_id."\tResiduo: ".$residuo_id."\tAtomo: ".$atomo_id."\n";
      }
   }
}