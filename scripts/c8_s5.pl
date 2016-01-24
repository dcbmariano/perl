use strict;

# Metacaracteres quantitativos
my @lista = ("Alanina","Cisteina","Aspartato","Glutamato","Fenilalanina","Glicina","Histidina");
my $l;

foreach $l(@lista){

  # * => analisa se o "u" aparece 0, 1 ou varias vezes
  if($l =~ /Glu*/){
    print "/Glu*/: $l \n"; # Glutamato Glicina
  }

  # ? => possui ou nao "i" apos o caractere "l"
  if($l =~ /[A-G]li?/){
    print "[A-G]li?: $l \n"; # Alanina Glutamato Glicina
  }

  # teste com + e {y,x}
  if($l eq "Histidina"){
                
    # teste com 2 caracteres 'a'
    $l = "Histidinaa";

    if($l =~ /Histidina+/){
      print "Repeticao detectada na ultima letra.\n";
      # Repeticao detectada na ultima letra.
    }

    if($l =~ /Histidina{3,5}/){
      print "Exite entre 3 e 5 'a'.\n";
    }
    else{
      print "Numero de repeticoes menor que 3 ou maior que 5.\n";
    }
    # Numero de repeticoes menor que 3 ou maior que 5.
  }
}