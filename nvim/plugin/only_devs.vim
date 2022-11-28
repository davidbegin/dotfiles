
function! EveryoneIsCheating()
  let s:twitch_call=system('espeak -a 20 "Everyone is cheating except for Beeginbot"')
endfunction

function! ChatPlzHelpBegin()
  let s:twitch_call=system('espeak -a 20 "Chat Please Help Beeginbot"')
endfunction

function! Bold()
  let s:twitch_call=system('espeak -a 20 -g 20 -p 20 "Time for some Bold. Innovative. Strategies."')
endfunction

function! NotCheating()
  let s:twitch_call=system('espeak --punct -a 20 -p 99 "This is not technically cheating"')
endfunction

function! SuckIt()
  let s:twitch_call=system('espeak --punct -a 20 "Suck it losers"')
endfunction

function! SorryNotSorry()
  let s:twitch_call=system('espeak -a 20 -p 99 "Sorry not sorry"')
endfunction

" ---------------------------------------

function! Speak()
  let s:msg=getline('.')
  let s:twitch_call=system('espeak --punct -a 20 -g 20 " ' .  s:msg . ' "')
endfunction

function! FastSpeak()
  let s:msg=getline('.')
  let s:twitch_call=system('espeak --punct -a 20 " ' .  s:msg . ' "')
endfunction

function! SpeakChar()
  let s:char=getline('.')[col('.')-1]
  let s:twitch_call=system('espeak --punct -a 20 " ' .  s:char. ' "')
endfunction
