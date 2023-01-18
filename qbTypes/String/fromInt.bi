$IF QBTYPES_STRING_FROMINT=UNDEFINED THEN
$LET QBTYPES_STRING_FROMINT=DEFINED

$IF QBTYPES_STRING=UNDEFINED THEN
$ERROR expected: 'String.bi'
$ENDIF

function String.fromInt$(this&&)
	String.fromInt = String.trim(str$(this&&))
end function

$ENDIF
