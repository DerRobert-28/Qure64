$IF QBCC_TYPES_STRING_FIRSTOF=UNDEFINED THEN
$LET QBCC_TYPES_STRING_FIRSTOF=DEFINED

$IF QBCC_TYPES_STRING=UNDEFINED THEN
$ERROR expected: 'String.bi'
$ENDIF

function String.first$(this$, length&)
	String.first = left$(this$, length&)
end function

function String.firstOf$(this$)
	String.firstOf = String.first(this$, 1)
end function

$ENDIF
