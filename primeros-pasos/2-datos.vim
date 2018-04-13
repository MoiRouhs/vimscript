" Una lista es un conjunto de objetos entre corchetes cuadrados y separados por comas
let lista = ["hola","Luis","¿estas","bien?"]
" len también sirve para saber el número de objetos de un 
let llista = len(lista)

" join encadena los elementos en una sola cadena
let jlista = join(lista, " ")

" Los diccionarios tiene palabra y defecciones separados por dos puntos y coma entre las diferentes entradas de este, uno puede anidar listas dentro de definición.
let diccionarios = {"palabra 1":"definición 1", "palabra 2":"definición 2", "palabra 3":["lista","diccionario"]}

" Para consultar el elemento de una lista vasta con escribir el nombre de la lista y entre paréntesis cuadrados el número del elemento consultar
" los elementos se cuentan de izquierda a derecha y empieza desde cero

" Para consultar un diccionario se hace lo mismo pero en vez de un numero se pone el nombre de la palabra entre comillas dobles o sonsillas.

" Aquí se esta consultando el primero elemento de la lista de la última palabra del diccionario
echo diccionarios["palabra 3"][0]
