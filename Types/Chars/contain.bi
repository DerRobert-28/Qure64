$IF QB64CC_TYPES_CHARS_CONTAIN=UNDEFINED THEN
$LET QB64CC_TYPES_CHARS_CONTAIN=DEFINED

$IF QB64CC_TYPES_CHARS=UNDEFINED THEN
$ERROR expected: 'Chars.bi'
$ENDIF

function Chars.contain%%(this$(), value$)
	dim each&, result%%
	for each& = lbound(this$) to ubound(this$)
		result%% = Chars.areEqual(this$(each&), value$)
		if result%% then exit for
	next
	Chars.contain = result%%
end function

$ENDIF
