$IF QBCC_TYPES_STRING_FROMDOUBLE=UNDEFINED THEN
$LET QBCC_TYPES_STRING_FROMDOUBLE=DEFINED

$IF QBCC_TYPES_STRING=UNDEFINED THEN
$ERROR expected: 'String.bi'
$ENDIF

function String.fromDouble$(this#)
	String.fromDouble = String.trim(str$(this#))
end function

$ENDIF
