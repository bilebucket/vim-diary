if exists("b:current_syntax")
	finish
endif

highlight diaryTaskWontDo	cterm=strikethrough ctermfg=102
highlight diaryTaskDone		ctermfg=142 cterm=bold
highlight diaryTicketId		ctermfg=109 cterm=bold
highlight diaryTicketTodo	cterm=bold,reverse ctermfg=203 ctermbg=235

syntax keyword diaryTodo	TODO TASK NOTE
highlight link diaryTodo	diaryTicketTodo

syntax match diaryTicketID 	"[a-zA-Z]\+-\d\+"
highlight link diaryTicketID	Identifier

syntax match diarySeparator	"--\+"
highlight link diarySeparator	Comment

syntax match diaryTaskPending	"\_^\[\ \].\+"
syntax match diaryTaskDone	"\_^\[+\].\+"
syntax match diaryTaskWontDo	"\_^\[\-\].\+"

highlight link diaryTaskPending	Todo
highlight link diaryTaskDone	diaryTaskDone
highlight link diaryTaskWontDo	diaryTaskWontDo

syntax match diaryDate		"\d\+-\d\+-\d\+"
highlight link diaryDate	Constant 

syntax match diaryTime		"\d\+:\d\+:\d\+"
highlight link diaryTime	Constant 

syntax match diaryTag		"#[a-zA-Z]\+"
highlight diaryTag		cterm=reverse ctermfg=109

let b:current_syntax = "diary"
