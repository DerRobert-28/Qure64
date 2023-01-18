$IF QBCC_TYPES_CHARS_INDEXOF=UNDEFINED THEN
$LET QBCC_TYPES_CHARS_INDEXOF=DEFINED

$IF QBCC_TYPES_CHARS=UNDEFINED THEN
$ERROR expected: 'Chars.bi'
$ENDIF

function Chars.indexOf&(this$(), value$)
	dim each&, result&
	result& = lbound(this$) - 1
	for each& = result& + 1 to ubound(this$)
		if Chars.areEqual(this$(each&), value$) then
			result& = each&
			exit for
		endif
	next
	Chars.indexOf = result&
end function

$ENDIF
