$IF QBCC_TYPES_STRING_FROMFLOAT=UNDEFINED THEN
$LET QBCC_TYPES_STRING_FROMFLOAT=DEFINED

$IF QBCC_TYPES_STRING=UNDEFINED THEN
$ERROR expected: 'String.bi'
$ENDIF

function String.fromFloat$(this!)
	String.fromFloat = String.trim(str$(this!))
end function

$ENDIF
