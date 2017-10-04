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
    if(bufexists('mpc.mpdv'))
        let mpcwin = bufwinnr('mpc.mpdv')
        if(mpcwin == -1)
            execute "sbuffer " . bufnr('mpc.mpdv')
        else
            execute mpcwin . "wincmd w"
            return
        endif
     else
         execute "new mpc.mpdv"
     endif
     call mpc#mpc#DisplayPlaylist()
endfunction
