$IF QB64CC_TYPES_STRING_FROMINT=UNDEFINED THEN
$LET QB64CC_TYPES_STRING_FROMINT=DEFINED

$IF QB64CC_TYPES_STRING=UNDEFINED THEN
$ERROR expected: 'String.bi'
$ENDIF

function String.fromInt$(this&&)
	String.fromInt = String.trim(str$(this&&))
end function

$ENDIF
