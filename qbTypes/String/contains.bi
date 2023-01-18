$IF QBTYPES_STRING_CONTAINS=UNDEFINED THEN
$LET QBTYPES_STRING_CONTAINS=DEFINED

$IF QBTYPES_STRING=UNDEFINED THEN
$ERROR expected: 'String.bi'
$ENDIF

function String.contains%%(this$, value$)
	String.contains = (instr(this$, value$) > 0)
end function

$ENDIF
