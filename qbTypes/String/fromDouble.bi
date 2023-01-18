$IF QBTYPES_STRING_FROMDOUBLE=UNDEFINED THEN
$LET QBTYPES_STRING_FROMDOUBLE=DEFINED

$IF QBTYPES_STRING=UNDEFINED THEN
$ERROR expected: 'String.bi'
$ENDIF

function String.fromDouble$(this#)
	String.fromDouble = String.trim(str$(this#))
end function

$ENDIF
