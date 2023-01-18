$IF QBCC_TYPES_STRING_ENDSWITHIGNORECASE=UNDEFINED THEN
$LET QBCC_TYPES_STRING_ENDSWITHIGNORECASE=DEFINED

$IF QBCC_TYPES_STRING=UNDEFINED THEN
$ERROR expected: 'String.bi'
$ENDIF

function String.endsWithIgnoreCase%%(this$, value$)
	String.endsWithIgnoreCase = String.endsWith(String.toLower(this$), String.toLower(value$))
end function

$ENDIF
