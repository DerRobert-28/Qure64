$IF QB64CC_TYPES_STRING_FROMBYTE=UNDEFINED THEN
$LET QB64CC_TYPES_STRING_FROMBYTE=DEFINED

$IF QB64CC_TYPES_STRING=UNDEFINED THEN
$ERROR expected: 'String.bi'
$ENDIF

function String.fromByte$(this%%)
	String.fromByte = String.trim(str$(this%%))
end function

$ENDIF
