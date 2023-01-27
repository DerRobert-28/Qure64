$IF QB64CC_TYPES_STRING_STARTSWITH=UNDEFINED THEN
$LET QB64CC_TYPES_STRING_STARTSWITH=DEFINED

$IF QB64CC_TYPES_STRING=UNDEFINED THEN
$ERROR expected: 'String.bi'
$ENDIF

function String.startsWith%(this$, value$)
	String.startsWith = (String.first(this$, len(value$)) = value$)
end function

$ENDIF
