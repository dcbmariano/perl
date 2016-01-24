package Calculadora;
use strict;
use warnings;
 
use Exporter qw(import);
 
our @EXPORT_OK = qw(soma divisao multiplicacao subtracao);
 
sub soma {
  my $x = $_[0];
  my $y = $_[1];
  
  return $x + $y;
}
sub divisao {
  my $x = $_[0];
  my $y = $_[1];
  
  return $x / $y;
}
sub multiplicacao {
  my $x = $_[0];
  my $y = $_[1];
  
  return $x * $y;
}
sub subtracao {
  my $x = $_[0];
  my $y = $_[1];
  
  return $x - $y;
}
 
1;