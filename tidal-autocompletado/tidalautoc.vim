" Vim global plugin for auto-completion in Tidal Cycles
" File: tidalautoc.vim
" Last Change: 2018 - 4 - 25 
" Maintainer:	Carlos Rocha <carsrouhs@hotmail.com>
" License: This file is placed in the public domain.

function!  tidalautoc#TidalCompleto()
	let categorias = ["Sounds","Compositions","Conditional-Transformers","Sample-Transformers","Synth-Parameters","Pattern-Transformers","Transitions","Utility"]
	let tipo = &ft
	if tipo == 'text'
		set dictionary+=\Users\croch015\dicts\Sounds
		set dictionary+=\Users\croch015\dicts\Compositions
		set dictionary+=\Users\croch015\dicts\Conditional-Transformers
		set dictionary+=\Users\croch015\dicts\Sample-Transformers
		set dictionary+=\Users\croch015\dicts\Synth-Parameters
		set dictionary+=\Users\croch015\dicts\Pattern-Transformers
		set dictionary+=\Users\croch015\dicts\Transitions
		set dictionary+=\Users\croch015\dicts\Utility
		echo "TidalCompleto is ready!! :)"
	else
		echo "It isn't Tidal file :("
	endif
endfunction

"nmap <F12> :call tidalautoc#TidalCompleto()<CR>
