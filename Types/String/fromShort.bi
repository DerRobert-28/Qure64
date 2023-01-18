$IF QBTYPES_STRING_FROMSHORT=UNDEFINED THEN
$LET QBTYPES_STRING_FROMSHORT=DEFINED

$IF QBTYPES_STRING=UNDEFINED THEN
$ERROR expected: 'String.bi'
$ENDIF

function String.fromShort$(this%)
	String.fromShort = String.trim(str$(this%))
end function

$ENDIF
