let tidalhelp = { 
\ 'Compositions':['seqP', 'cat', 'fastcat', 'interlace', 'randcat','append', 'spin', 'stack', 'superimpose', 'weave','wedge'],
\ 'Conditional Transformers': ['someCyclesBy', 'foldEvery', 'ifp', 'mask', 'every', 'sometimesBy', 'sometimes', 'often', 'rarely', 'almostNever', 'almostAlways','never', 'always', 'swingBy', 'swing', 'when', 'whenmod', 'within'],
\ 'Pattern Transformers':['palindrome', 'brak', 'degrade', 'degradeBy', 'fast', 'fit', 'iter', 'jux', 'juxBy', 'linger', 'rev', 'scramble', 'shuffle', 'slow', 'smash', 'spread', 'toScale', 'trunc', 'zoom'],
\ 'Sample Transformers': ['loopAt', 'gap', 'chop', 'striate', 'striateL', 'stut'],
\ 'Synth Parameters':['hcutoff','bandf','bandq','begin','coarse','crush','cut','cutoff','delay','delayfeedback','delaytime','end','gain','accelerate','hresonance','legato','loop','nudge','pan','resonance','room','and','size','shape','sound','speed','sustain','unit','vowel'],
\ 'Transitions':['clutch','histpan','jump','jumpIn','jumpMod','mortal','superwash','wait','wash','xfade'],
\ 'Utility':['choose','irand','pequal','rand','run','scale','up']
\}
let soundSamples =['808','808bd','808cy','808hc','808ht','808lc','808lt','808mc','808mt','808oh','808sd','909','ab','ade','ades2','ades3','ades4','alex','alphabet','amencutup','armora','arp','arpy','auto','baa','baa2','bass','bass0','bass1','bass2','bass3','bassdm','bassfoo','battles','bd','bend','bev','bin','birds','birds3','bleep','blip','blue','bottle','breaks125','breaks152','breaks157','breaks165','breath','bubble','can','casio','cb','cc','chin','chink','circus','clak','click','clubkick','co','control','cosmicg','cp','cr','crow','d','db','diphone','diphone2','Dirt-Samples.quark','dist','dork2','dorkbot','dr','dr2','dr55','dr_few','drum','drumtraks','e','east','electro1','erk','f','feel','feelfx','fest','fire','flick','fm','foo','future','gab','gabba','gabbaloud','gabbalouder','glasstap','glitch','glitch2','gretsch','gtr','h','hand','hardcore','hardkick','haw','hc','hh','hh27','hit','hmm','ho','hoover','house','ht','if','ifdrums','incoming','industrial','insect','invaders','jazz','jungbass','jungle','juno','jvbass','kicklinn','koy','kurt','latibro','led','less','lighter','linnhats','lt','made','made2','mash','mash2','metal','miniyeah','moan','monsterb','moog','mouth','mp3','msg','mt','mute','newnotes','noise','noise2','notes','numbers','oc','odx','off','outdoor','pad','padlong','pebbles','perc','peri','pluck','popkick','print','proc','procshort','psr','rave','rave2','ravemono','README.md','realclaps','reverbkick','rm','rs','sax','sd','seawolf','sequential','sf','sheffield','short','sid','sine','sitar','sn','space','speakspell','speech','speechless','speedupdown','stab','stomp','subroc3d','sugar','sundance','tabla','tabla2','tablex','tacscan','tech','techno','tink','tok','toys','trump','ul','ulgab','uxay','v','voodoo','wind','wobble','world','xmas','yeah']

echo soundSamples[6]

function! Palabra()
	let puntero = getcurpos()
	let linea = getline(".")
	let caracter =  linea[puntero[2] - 1]
	let lineaLista = split( linea," ")
	let palabraCursor =  expand("<cWORD>")
	let lisPalCursor = split(palabraCursor,'\zs')
	let palabraObjetivo = palabraCursor
	let cantidad = 0 
	for jh in lisPalCursor
		if caracter == jh
			let cantidad = 1
		endif
	endfor
	if cantidad == 0
		let pos = 1
		for pal in lineaLista
			if palabraCursor == pal
				let palabraObjetivo = lineaLista[pos - 2]
			endif
			let pos += 1
		endfor
	endif
	echom palabraObjetivo
endfunction

" Función de autocompletado

let s:matches=".fa-lg .fa-2x .fa-3x .fa-4x .fa-5x .fa-fw .fa-ul .fa-ul .fa-li .fa-li.fa-lg .fa-border .fa-pull-left .fa-pull-right .fa.fa-pull-left"

function! csscomplete#CompleteFA(findstart, base)
    if a:findstart
        " locate the start of the word
        let line = getline('.')
        let start = col('.') - 1
        while start > 0 && (line[start - 1] =~ '\a' || line[start - 1] =~ '.' || line[start - 1] =~ '-')
            let start -= 1
        endwhile
        return start
    else
        " find classes matching "a:base"
        let res = []
        for m in split(s:matches)
            if m =~ '^' . a:base
                call add(res, m)
            endif
        endfor
        return res
    endif
endfun
