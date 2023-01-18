$IF QBTYPES_STRING_FROMFLOAT=UNDEFINED THEN
$LET QBTYPES_STRING_FROMFLOAT=DEFINED

$IF QBTYPES_STRING=UNDEFINED THEN
$ERROR expected: 'String.bi'
$ENDIF

function String.fromFloat$(this!)
	String.fromFloat = String.trim(str$(this!))
end function

$ENDIF
