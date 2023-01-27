$IF QB64CC_TYPES_STRING_FROMLONG=UNDEFINED THEN
$LET QB64CC_TYPES_STRING_FROMLONG=DEFINED

$IF QB64CC_TYPES_STRING=UNDEFINED THEN
$ERROR expected: 'String.bi'
$ENDIF

function String.fromLong$(this&)
	String.fromLong = String.trim(str$(this&))
end function

$ENDIF
