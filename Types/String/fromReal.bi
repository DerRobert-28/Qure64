$IF QBCC_TYPES_STRING_FROMREAL=UNDEFINED THEN
$LET QBCC_TYPES_STRING_FROMREAL=DEFINED

$IF QBCC_TYPES_STRING=UNDEFINED THEN
$ERROR expected: 'String.bi'
$ENDIF

function String.fromReal$(this##)
	String.fromReal = String.trim(str$(this##))
end function

$ENDIF
