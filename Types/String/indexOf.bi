$IF QBTYPES_STRING_INDEXOF=UNDEFINED THEN
$LET QBTYPES_STRING_INDEXOF=DEFINED

$IF QBTYPES_STRING=UNDEFINED THEN
$ERROR expected: 'String.bi'
$ENDIF

function String.indexOf&(this$, value$)
	String.indexOf = instr(this$, value$) - 1
end function

$ENDIF
