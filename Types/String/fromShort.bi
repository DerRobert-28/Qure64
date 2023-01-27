$IF QB64CC_TYPES_STRING_FROMSHORT=UNDEFINED THEN
$LET QB64CC_TYPES_STRING_FROMSHORT=DEFINED

$IF QB64CC_TYPES_STRING=UNDEFINED THEN
$ERROR expected: 'String.bi'
$ENDIF

function String.fromShort$(this%)
	String.fromShort = String.trim(str$(this%))
end function

$ENDIF
