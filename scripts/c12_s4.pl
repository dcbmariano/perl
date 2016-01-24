use Bio::Structure::IO;
use strict;

my %atomo1 = ("cadeia" => "A", residuo => 'THR-2', atomo => 'CA');
my %atomo2 = ("cadeia" => "A", residuo => 'ILE-3', atomo => 'CA');
my @atomo1_xyz;
my @atomo2_xyz;

my $pdb = Bio::Structure::IO->new(-file => 'arquivo5.txt',-format => 'PDB');

my $estrutura = $pdb->next_structure;

foreach my $cadeia ($estrutura->get_chains) {
   my $cadeia_id = $cadeia->id;
   foreach my $residuo ($estrutura->get_residues($cadeia)) {
      my $residuo_id = $residuo->id;
      foreach my $atomo ($estrutura->get_atoms($residuo)){
      	my $atomo_id = $atomo->id;

      	# Comparacoes
      	if(($cadeia_id eq $atomo1{cadeia})and($residuo_id eq $atomo1{residuo})and($atomo_id eq 'CA')){
      		@atomo1_xyz = $atomo->xyz; 
      		
      	}
      	elsif(($cadeia_id eq $atomo2{cadeia})and($residuo_id eq $atomo2{residuo})and($atomo_id eq 'CA')){
      		@atomo2_xyz = $atomo->xyz; 
      	}
      }
   }
}

my $distancia = sqrt( ($atomo2_xyz[0] - $atomo1_xyz[0])**2 + ($atomo2_xyz[1] - $atomo1_xyz[1])**2 + ($atomo2_xyz[2] - $atomo1_xyz[2])**2 );
print $distancia;
#3.80040958318968