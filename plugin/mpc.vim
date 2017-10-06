"---------------------------------------------------------------
" This is a short vi plugin that proves the concept
" @author: Yannick Sereckissy
"---------------------------------------------------------------
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

if(!exists(":MpcBrowser"))
    command MpcBrowser call OpenMpc()
endif

if(!exists(":TogglePlayback"))
    command TogglePlayback call mpc#mpc#TogglePlayback()
endif

