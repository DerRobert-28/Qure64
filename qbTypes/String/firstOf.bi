$IF QBTYPES_STRING_FIRSTOF=UNDEFINED THEN
$LET QBTYPES_STRING_FIRSTOF=DEFINED

$IF QBTYPES_STRING=UNDEFINED THEN
$ERROR expected: 'String.bi'
$ENDIF

function String.first$(this$, length&)
	String.first = left$(this$, length&)
end function

function String.firstOf$(this$)
	String.firstOf = String.first(this$, 1)
end function

$ENDIF
