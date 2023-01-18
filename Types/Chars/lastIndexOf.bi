$IF QBTYPES_CHARS_LASTINDEXOF=UNDEFINED THEN
$LET QBTYPES_CHARS_LASTINDEXOF=DEFINED

$IF QBTYPES_CHARS=UNDEFINED THEN
$ERROR expected: 'Chars.bi'
$ENDIF

function Chars.lastIndexOf&(this$(), value$)
	dim each&, result&
	result& = ubound(this$) + 1
	for each& = result& - 1 to lbound(this$) step -1
		if Chars.areEqual(this$(each&), value$) then
			result& = each&
			exit for
		endif
	next
	Chars.lastIndexOf = result&
end function

$ENDIF
