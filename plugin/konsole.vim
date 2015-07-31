" konsole.vim - Renames the KDE Konsole session to show the current filename
" Maintainer:   Gerhard Gappmeier <http://github.com/gergap>
" Version:      0.1
" Description:  This makes Damian Conway's vim-autoswap working in KDE konsole.
"               See https://github.com/gioele/vim-autoswap
augroup KDE
    autocmd!
    autocmd BufReadPost * :silent :call <sid>update_session_name()
    autocmd VimLeavePre * :silent :call <sid>clear_session_name()
augroup END
function! s:update_session_name()
    if !empty(@%)
        silent !qdbus org.kde.konsole $KONSOLE_DBUS_SESSION org.kde.konsole.Session.setTitle 1 %
    else
        silent !qdbus org.kde.konsole $KONSOLE_DBUS_SESSION org.kde.konsole.Session.setTitle 1 'empty'
    endif
    redraw!
endfunction
function! s:clear_session_name()
    silent !qdbus org.kde.konsole $KONSOLE_DBUS_SESSION org.kde.konsole.Session.setTitle 1 $PWD
    redraw!
endfunction


