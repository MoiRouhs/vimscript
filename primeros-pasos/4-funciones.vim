" TIPOS DE VARIABLES
"let g:variable_1 = '-s -H'    " g: variable global
"let s:variable_2 = 'ack'      " s: variable local en el script
"let l:variable_3 = 'bar'      " l: variable local en la función

" FUNCIONES
function Hola()
	let hola = "Hola mundo"
	echo hola
endfunction

"después de cargar el fichero con :source las funciones se llaman con :call Nombre_función()

" Función con argumento, es importante indicarle que se quiere trabajar con el argumento incluyéndole a:argumento
function Saludar(nombre)
	echo "Hola" a:nombre	 
endfunction

" Funciones hasta con 20 argumentos, para esto debe usarse ...
function Contar(...)
	echo "Número de argumentos" a:0
	echo "Argumento con index 0:" a:1
	echo "Lista de argumentos" a:000
" los parámetros se guardan en a:
" a: se consulta de tres formas: 
" a:0 (cantidad de argumentos)
" a:1 (primer argumento)
" a:000 (lista de argumentos)
endfunction

" MAPEANDO NUEVOS COMANDOS

" imap se usa para asignarle comandos a las teclas en modo inserción.
imap <silent> <F2> Insertando texto<CR>


" nmap se usa para asignarle comandos a las teclas en modo normal.
nmap <C-B> :call Hola()<CR>


" vmap se usa para asignarle comandos a las teclas en modo visual.
vmap <silent> ,s :call Hola()<CR>
