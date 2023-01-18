$IF QBTYPES_STRING_STARTSWITHIGNORECASE=UNDEFINED THEN
$LET QBTYPES_STRING_STARTSWITHIGNORECASE=DEFINED

$IF QBTYPES_STRING=UNDEFINED THEN
$ERROR expected: 'String.bi'
$ENDIF

function String.startsWithIgnoreCase%(this$, value$)
	String.startsWithIgnoreCase = String.startsWith(String.toLower(this$), String.toLower(value$))
end function

$ENDIF
