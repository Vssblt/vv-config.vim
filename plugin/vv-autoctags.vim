function! s:CheckAndAddTagFile(path)
	if stridx(a:path, '/') == (strlen(a:path) - 1)
		let l:tags = a:path . 'tags'
	else
		let l:tags = a:path . '/tags'
	endif

	if stridx(a:path, '/') == (strlen(a:path) - 1)
		let l:tagsp = a:path . 'vim-df59-tags'
	else
		let l:tagsp = a:path . '/vim-df59-tags'
	endif

	if filereadable(l:tagsp) 
		if stridx(&tags, l:tagsp) == -1
			let &tags =  len(&tags) == 0 ? &tags : &tags . ',' . fnameescape(l:tagsp)
			let Tlist_Ctags_Cmd = &tags
			echo l:tagsp "added"
		endif
	endif

	if filereadable(l:tags)
		if stridx(&tags, l:tags) == -1
			let &tags =  len(&tags) == 0 ? &tags : &tags . ',' . fnameescape(l:tags)
			let Tlist_Ctags_Cmd = &tags
			echo l:tags "added"
		endif
	endif

	unlet! l:tags
	unlet! l:tagsp
endfunction

function! s:StrEndWith(str, pattern)
    if strridx(a:str, a:pattern) == strlen(a:str) - strlen(a:pattern)
        return 1
    else
        return 0
    endif
endfunction

function! s:SplitPath(path)
    let l:start = 0
    let l:list = []

    while 1 == 1
        let l:idx = stridx(a:path, '/', l:start)
        let l:start = l:idx + 1

        if l:idx == -1
            break
        endif

        let l:part = a:path[0:(l:idx > 0 ? l:idx - 1 : l:idx)]
        call add(l:list, l:part)
    endwhile

    if !s:StrEndWith(a:path, '/')
        call add(l:list, a:path)
    endif

    return l:list
endfunction

function! AddTagsInCwdPath(path)
    let l:cwd = tr(a:path, '\', '/')

    let l:pathes = s:SplitPath(l:cwd)

    for p in l:pathes
        call s:CheckAndAddTagFile(p)
    endfor

endfunction

function! FlushTag()
	let l:subPath = expand("%:p:h")
	let l:filename = expand("%:p")
	exec "!mkdir -p \"". g:tagsPath.l:subPath. "\" 2>&1 >/dev/null"
	let l:tagp = "\"". g:tagsPath.l:subPath. "/vim-df59-tags\""
	exec "!ctags -f ". l:tagp . " -a " . "\"". l:filename. "\"" 
endfunction

function! ReloadTags(tp, rp)
	"let l:path = "\"".a:tp . a:rp. "\""
	let l:path = a:tp . a:rp
	silent call AddTagsInCwdPath(l:path)
	silent call AddTagsInCwdPath(a:rp)
endfunction

autocmd BufWritePost * :silent call FlushTag()
autocmd BufReadPost * :silent call ReloadTags(g:tagsPath, expand("%:p:h"))
