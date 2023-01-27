$IF QB64CC_TYPES_STRING_STARTSWITHIGNORECASE=UNDEFINED THEN
$LET QB64CC_TYPES_STRING_STARTSWITHIGNORECASE=DEFINED

$IF QB64CC_TYPES_STRING=UNDEFINED THEN
$ERROR expected: 'String.bi'
$ENDIF

function String.startsWithIgnoreCase%(this$, value$)
	String.startsWithIgnoreCase = String.startsWith(String.toLower(this$), String.toLower(value$))
end function

$ENDIF
