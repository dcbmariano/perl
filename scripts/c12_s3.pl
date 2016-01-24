use Bio::Structure::IO;

my $pdb = Bio::Structure::IO->new(-file => 'arquivo5.txt',-format => 'PDB');

my $estrutura = $pdb->next_structure;

foreach my $cadeia ($estrutura->get_chains) {
   my $cadeia_id = $cadeia->id;
   foreach my $residuo ($estrutura->get_residues($cadeia)) {
      my $residuo_id = $residuo->id;
      foreach my $atomo ($estrutura->get_atoms($residuo)){
      	my $atomo_id = $atomo->id;
      	my @atomo_xyz = $atomo->xyz;      	
      	print " | Residuo: ".$residuo_id;
      	print " | x = ".$atomo_xyz[0];
      	print " | y = ".$atomo_xyz[1];
      	print " | z = ".$atomo_xyz[2];
      	print " | Atomo: ".$atomo_id."\n";
      }
   }
}