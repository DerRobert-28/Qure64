$IF QBTYPES_STRING_LASTOF=UNDEFINED THEN
$LET QBTYPES_STRING_LASTOF=DEFINED

$IF QBTYPES_STRING=UNDEFINED THEN
$ERROR expected: 'String.bi'
$ENDIF

function String.last$(this$, length&)
	String.last = right$(this$, length&)
end function

function String.lastOf$(this$)
	String.lastOf = String.last(this$, 1)
end function

$ENDIF
