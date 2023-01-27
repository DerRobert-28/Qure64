$IF QB64CC_TYPES_STRING_ENDSWITH=UNDEFINED THEN
$LET QB64CC_TYPES_STRING_ENDSWITH=DEFINED

$IF QB64CC_TYPES_STRING=UNDEFINED THEN
$ERROR expected: 'String.bi'
$ENDIF

function String.endsWith%%(this$, value$)
	String.endsWith = (String.last(this$, len(value$)) = value$)
end function

$ENDIF
