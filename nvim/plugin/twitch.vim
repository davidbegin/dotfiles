function! PostChatByUser()
  let s:viewer = input('Search: ')
  let s:chat=system('beginchat -a | grep -i ' . s:viewer . ' | tail -5 ')
  let @+ = s:chat
endfunction

function! LastTwitchMsg()
  let s:chat=system('beginchat -c 2')
  let @+ = s:chat
  execute "normal! p"
endfunction

function! ObsSceneCommands()
  let s:chat=system('echo "codin\ncubin\nbrb\nstartin\nlecture\nbreakin\nnews" | dmenu -l 29 | xargs scene')
endfunction

function! ObsSourceCommands()
  let s:chat=system('echo "jdi\nidk\nwyp\ni_like_that_thing\ni_hate_that_thing\nrevolution\npeace" | dmenu -l 30 | xargs so')
endfunction

function! TwitchCommands()
  let s:chat=system('cat ~/.config/TWITCH_CHAT_COMMANDS | dmenu -l 30 | xargs beginbot')
endfunction

function! DecryptTheChat()
  let s:chat=system('beginchat -c 1')
  let @+ = s:chat
  execute "normal! p"
endfunction

function! PostChat()
  let s:chat=system('beginchat')
  let @+ = s:chat
endfunction

function! EveryoneIsCheating()
  let s:twitch_call=system('espeak -a 20 "Everyone is cheating except for Beeginbot"')
endfunction

function! ChatPlzHelpBegin()
  let s:twitch_call=system('espeak -a 20 "Chat Please Help Beeginbot"')
endfunction

function! FastSpeak()
  let s:msg=getline('.')
  let s:twitch_call=system('espeak --punct -a 20 " ' .  s:msg . ' "')
endfunction

function! SorryNotSorry()
  let s:twitch_call=system('espeak -a 20 -p 99 "Sorry not sorry"')
endfunction


function! Bold()
  let s:twitch_call=system('espeak -a 20 -g 20 -p 20 "Time for some Bold. Innovative. Strategies."')
endfunction

function! SpeakChar()
  let s:char=getline('.')[col('.')-1]
  let s:twitch_call=system('espeak --punct -a 20 " ' .  s:char. ' "')
endfunction

function! Speak()
  let s:msg=getline('.')
  let s:twitch_call=system('espeak --punct -a 20 -g 20 " ' .  s:msg . ' "')
endfunction

function! NotCheating()
  let s:twitch_call=system('espeak --punct -a 20 -p 99 "This is not technically cheating"')
endfunction

function! SuckIt()
  let s:twitch_call=system('espeak --punct -a 20 "Suck it losers"')
endfunction

function! SendToTwitch()
  let s:msg=getline('.')
  " Escape "'s or we won't be able to send lines with "
  let s:msg=substitute(s:msg, '"', '\\\"', '')
  let s:twitch_call=system('beginbot " ' .  s:msg . '"')

  " let s:regexForUrl='[a-z]*:\/\/[^ >,;)]*'
  " let s:uri=matchstr(s:msg, s:regexForUrl)
  " if len(s:uri)>0
  "     let s:twitch_call=system('beginbot " ' .  s:uri. '"')
  " else
  "     let s:twitch_call=system('beginbot " ' .  s:msg . '"')
  " endif
endfunction

function! GistAndPost(type)
  if a:type ==# 'V'
    let l:lines = getline("'<", "'>")
  else
    let l:lines = getline('^', '$')
  endif
  let l:uri = system('gist', l:lines)
  let s:chat=system('beginbot ' . l:uri . ' ')
endfunction
