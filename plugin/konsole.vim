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
		" Cf. http://stackoverflow.com/questions/5608112/escape-filenames-using-the-same-way-bash-do-it
        !qdbus org.kde.konsole $KONSOLE_DBUS_SESSION org.kde.konsole.Session.setTitle 1 $(printf '%q' %)
    else
        !qdbus org.kde.konsole $KONSOLE_DBUS_SESSION org.kde.konsole.Session.setTitle 1 'empty'
    endif
endfunction
function! s:clear_session_name()
    !qdbus org.kde.konsole $KONSOLE_DBUS_SESSION org.kde.konsole.Session.setTitle 1 $PWD
endfunction


