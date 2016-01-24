my $i = 0;

while($i < 10){

	print $i; #012345
	$i++;

	if ($i > 5){ 
		last;
	}

}