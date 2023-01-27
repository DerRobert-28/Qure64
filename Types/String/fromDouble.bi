$IF QB64CC_TYPES_STRING_FROMDOUBLE=UNDEFINED THEN
$LET QB64CC_TYPES_STRING_FROMDOUBLE=DEFINED

$IF QB64CC_TYPES_STRING=UNDEFINED THEN
$ERROR expected: 'String.bi'
$ENDIF

function String.fromDouble$(this#)
	String.fromDouble = String.trim(str$(this#))
end function

$ENDIF
