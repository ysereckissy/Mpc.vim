"---------------------------------------------------------------
" This is a short vi plugin that proves the concept
" @author: Yannick Sereckissy
"---------------------------------------------------------------
"function! OpenMpc()
"    let cmd = "mpc --format '%position% %artist% / %album% / %title%' playlist"
"    let playlist = split(system(cmd), '\n')
"    new                                             " Open a new window
"    for track in playlist
"        if(playlist[0] == track)
"            execute "normal! I" . track
"        else
"            call append(line('$'), track)
"        endif
"    endfor
"endfunction

"----------------------------------------------------------------
" Below is a shorter version of the same function
"----------------------------------------------------------------
function! OpenMpc()
    let cmd = "mpc --format '%position% %artist% / %album% / %title%' playlist"
    let playlist = split(system(cmd), '\n')
    new                                             " Open a new window
    call append(0, playlist)
endfunction
