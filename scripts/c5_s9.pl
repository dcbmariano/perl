my $i = 0;

while($i < 10){

	$i++;

	if ($i % 2 == 1){ 
		next;
	}

	print $i; # 246810

}