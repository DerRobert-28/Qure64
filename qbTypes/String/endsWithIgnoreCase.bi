$IF QBTYPES_STRING_ENDSWITHIGNORECASE=UNDEFINED THEN
$LET QBTYPES_STRING_ENDSWITHIGNORECASE=DEFINED

$IF QBTYPES_STRING=UNDEFINED THEN
$ERROR expected: 'String.bi'
$ENDIF

function String.endsWithIgnoreCase%%(this$, value$)
	String.endsWithIgnoreCase = String.endsWith(String.toLower(this$), String.toLower(value$))
end function

$ENDIF
