$IF QB64CC_TYPES_STRING_FROMREAL=UNDEFINED THEN
$LET QB64CC_TYPES_STRING_FROMREAL=DEFINED

$IF QB64CC_TYPES_STRING=UNDEFINED THEN
$ERROR expected: 'String.bi'
$ENDIF

function String.fromReal$(this##)
	String.fromReal = String.trim(str$(this##))
end function

$ENDIF
