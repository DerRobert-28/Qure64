$IF QBCC_TYPES_STRING_CONTAINS=UNDEFINED THEN
$LET QBCC_TYPES_STRING_CONTAINS=DEFINED

$IF QBCC_TYPES_STRING=UNDEFINED THEN
$ERROR expected: 'String.bi'
$ENDIF

function String.contains%%(this$, value$)
	String.contains = (instr(this$, value$) > 0)
end function

$ENDIF
