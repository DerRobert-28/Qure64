$IF QBCC_TYPES_STRING_EMPTY=UNDEFINED THEN
$LET QBCC_TYPES_STRING_EMPTY=DEFINED

$IF QBCC_TYPES_STRING=UNDEFINED THEN
$ERROR expected: 'String.bi'
$ENDIF

function String.EMPTY$()
	String.EMPTY = ""
end function

$ENDIF
