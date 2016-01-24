# ORDENACAO NUMERICA
@numeros = (19, 1, 13, 27, 2, 4);
@numeros_ordenados = sort { $a <=> $b } @numeros;

print "Numeros nao ordenados:        @numeros\nNumeros ordenados com sort:   @numeros_ordenados\n";
# Numeros nao ordenados:        19 1 13 27 2 4
# Numeros ordenados com sort:   1 2 4 13 19 27