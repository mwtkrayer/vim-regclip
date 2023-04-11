" Copy content of register to clipboard. Expects register name as 
" argument. Defaults to unnamed register if no arg is provided.
command! -nargs=* RegToClip call s:register_to_osc52(<f-args>)

" Send the content of a register to the clipboard using OSC52 sequence.
function! s:register_to_osc52(...)
  let reg = get(a:,1,"")
  let str = getreg(reg)
  let b64 = system('base64 -w 0',str)
  execute 'silent !printf "\033]52;c;'.b64.'\a"'  
  redraw!
endfun
