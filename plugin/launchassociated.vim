" -*- vim -*-
" FILE: launchassociated.vim
" PLUGINTYPE: plugin
" DESCRIPTION: Launches current file with the associated program.
" HOMEPAGE: https://github.com/caglartoklu/launchassociated.vim
" LICENSE: https://github.com/caglartoklu/launchassociated.vim/blob/master/LICENSE
" AUTHOR: caglartoklu

if exists('g:loaded_launchassociated') || &cp
    " If it already loaded, do not load it again.
    finish
endif


" mark that plugin loaded
let g:loaded_launchassociated = 1


function! s:DetectOs()
    let resultOs = ''
    if has('win16') || has('win32') || has('win64')
        let resultOs = 'windows'
    elseif has('unix')
        " http://en.wikipedia.org/wiki/Uname
        if system('uname')=~'Darwin'
            let resultOs = 'macosx'
        elseif system('uname')=~'FreeBSD'
            let resultOs = 'freebsd'
        else
            let resultOs = 'linux'
        endif
    endif
    return resultOs
endfunction


function! s:Strip(input_string)
    " Strips (or trims) leading and trailing whitespace.
    " http://stackoverflow.com/a/4479072
    return substitute(a:input_string, '^\s*\(.\{-}\)\s*$', '\1', '')
endfunction


function! s:LaunchAssociated(fileName)
    if s:Strip(a:fileName) != ''
        let detectedOs = s:DetectOs()
        if detectedOs == 'windows'
            let cmd ='cmd.exe /c start ' . ' "title" "' . a:fileName . '"'
            echo cmd
            " Decho cmd
            call system(cmd)
        elseif detectedOs == 'macosx'
            call system('open "' . a:fileName . '"')
        else
            " linux, freebsd etc
            call system('xdg-open "' . a:fileName . '"')
        endif
    else
        echo 'launchassociated.vim: open a file first'
    endif
endfunction


" commands exposed
command! -nargs=0 LaunchAssociated :
    \call s:LaunchAssociated(expand("%:p"))
