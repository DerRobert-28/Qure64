$IF QBTYPES_STRING_EMPTY=UNDEFINED THEN
$LET QBTYPES_STRING_EMPTY=DEFINED

$IF QBTYPES_STRING=UNDEFINED THEN
$ERROR expected: 'String.bi'
$ENDIF

function String.EMPTY$()
	String.EMPTY = ""
end function

$ENDIF
