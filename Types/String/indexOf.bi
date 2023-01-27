$IF QB64CC_TYPES_STRING_INDEXOF=UNDEFINED THEN
$LET QB64CC_TYPES_STRING_INDEXOF=DEFINED

$IF QB64CC_TYPES_STRING=UNDEFINED THEN
$ERROR expected: 'String.bi'
$ENDIF

function String.indexOf&(this$, value$)
	String.indexOf = instr(this$, value$) - 1
end function

$ENDIF
