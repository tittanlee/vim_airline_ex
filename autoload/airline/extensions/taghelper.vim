scriptencoding utf-8


function! airline#extensions#taghelper#init(ext)
	call airline#parts#define_function('taghelper', 'taghelper#curtag')
	call a:ext.add_statusline_func('airline#extensions#taghelper#apply')
endfunction

function! airline#extensions#taghelper#apply(...)
	call airline#extensions#append_to_section("c", " %{taghelper#curtag()}")
endfunction
