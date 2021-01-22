function! DiaryOpenTicket()
	silent !clear
	execute "!" . g:diary_browser_command . " " . g:diary_issue_tracker_url . expand("<cword>")
endfunction
