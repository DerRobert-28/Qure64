$IF QBTYPES_STRING_FROMREAL=UNDEFINED THEN
$LET QBTYPES_STRING_FROMREAL=DEFINED

$IF QBTYPES_STRING=UNDEFINED THEN
$ERROR expected: 'String.bi'
$ENDIF

function String.fromReal$(this##)
	String.fromReal = String.trim(str$(this##))
end function

$ENDIF
