$IF QBTYPES_STRING_ENDSWITH=UNDEFINED THEN
$LET QBTYPES_STRING_ENDSWITH=DEFINED

$IF QBTYPES_STRING=UNDEFINED THEN
$ERROR expected: 'String.bi'
$ENDIF

function String.endsWith%%(this$, value$)
	String.endsWith = (String.last(this$, len(value$)) = value$)
end function

$ENDIF
