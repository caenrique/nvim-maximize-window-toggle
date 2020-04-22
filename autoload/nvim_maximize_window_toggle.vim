""
" @public
" If the current tab page has more than one window,
" opens the current buffer alone in a new tab.
" Calling this function again in the new window will
" close the tab and go back to the original window
""
function! nvim_maximize_window_toggle#ToggleOnly()
  if winnr("$") > 1
  " There are more than one window in this tab
    if exists("b:maximized_window_id")
      call win_gotoid(b:maximized_window_id)
    else
      let b:origin_window_id = win_getid()
      tab sp
      let b:maximized_window_id = win_getid()
    endif
  else
  " This is the only window in this tab
    if exists("b:origin_window_id")
      let l:origin_window_id = b:origin_window_id
      tabclose
      call win_gotoid(l:origin_window_id)
      unlet b:maximized_window_id
      unlet b:origin_window_id
    endif
  endif
endfunction
