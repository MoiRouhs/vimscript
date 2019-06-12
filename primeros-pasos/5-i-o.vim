" Funciones con las que se pueden traer o insertar datos en el buffer

function Remplazar() " setline() permite Remplazar el contenido de una línea por otro
  :call setline('.', 'Coconuts') " El '.' hace referencia a la linea actual
endfunction

function InputRemplazar(texto)
  :call setline('$',a:texto) " El '$' hace referencia a la línea final
endfunction

function Insertar() " Inserta en el buffer actual
  :call append('4','" fin fin') " Se puede poner cualquier número de linea para llevar a cabo la operación
endfunction

function InputInsertar(texto)
  :call append('.',a:texto) " append() no elimina información, inserta los datos en una línea nueva.
endfunction

function Capturar() " getline() Captura la información de la linea indicada
  let l:ca = getline('24')
  echo l:ca
endfunction

function CapturarInsertar()
  let l:ca = getline('24')
  :call append('$',l:ca)
endfunction

function InputCapturarInsertar(texto)
  let l:ca = getline('.')
  let l:resultado = join([l:ca, a:texto], ' ')
  :call append('$',l:resultado)
endfunction

 " hola mundo 
