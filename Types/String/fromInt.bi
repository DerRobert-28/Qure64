$IF QBCC_TYPES_STRING_FROMINT=UNDEFINED THEN
$LET QBCC_TYPES_STRING_FROMINT=DEFINED

$IF QBCC_TYPES_STRING=UNDEFINED THEN
$ERROR expected: 'String.bi'
$ENDIF

function String.fromInt$(this&&)
	String.fromInt = String.trim(str$(this&&))
end function

$ENDIF
