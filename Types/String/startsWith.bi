$IF QBTYPES_STRING_STARTSWITH=UNDEFINED THEN
$LET QBTYPES_STRING_STARTSWITH=DEFINED

$IF QBTYPES_STRING=UNDEFINED THEN
$ERROR expected: 'String.bi'
$ENDIF

function String.startsWith%(this$, value$)
	String.startsWith = (String.first(this$, len(value$)) = value$)
end function

$ENDIF
