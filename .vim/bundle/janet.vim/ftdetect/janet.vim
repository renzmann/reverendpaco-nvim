fun! s:DetectJanet()
    if getline(1) =~# '^#!.*/bin/env\s\+janet\>'
        setfiletype janet
    endif
endfun

autocmd BufRead,BufNewFile *.janet setlocal filetype=janet
autocmd BufNewFile,BufRead * call s:DetectJanet()
