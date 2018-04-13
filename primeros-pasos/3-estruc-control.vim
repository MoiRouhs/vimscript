let num = 2

" esta es la sentencia if 
if 15 <= num
" tenemos los operadores: == (igual), != (Desigualdad), >= (mayor o igual). <= (menor o igual), || (o lógico), && (y lógico)
	echo 'la variables es mayor'
else
	echo "Es menor"
endif

" Ejemplo operador ternario, quitar comillas
let ternario = 1 > 2 ? "verdadero operador ternario" : "falso operadores ternario" 
echo ternario

"Ejemplo for usando range(), también puede iterar en una lista
for indice in range(2)
 echo "for valor" indice
endfor

" Ejemplo while, se ejecuta hasta que la sentencia sea falsa
let indicador = 0
while indicador < 2
 echo "while valor" indicador
 let indicador += 1
endwhile


" OPERADORES LÓGICOS	
"Asignar valor:  let var = valor 
"Sumar con el número asignado: let var += número
"Restar con el número asignado: let var -= número
"Concadenar con el texto asignado: let var .= texto
"Negación lógica: !
"Concatenación de texto: texto1 . texto2
