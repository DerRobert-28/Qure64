$IF QBCC_TYPES_STRING_FROMBYTE=UNDEFINED THEN
$LET QBCC_TYPES_STRING_FROMBYTE=DEFINED

$IF QBCC_TYPES_STRING=UNDEFINED THEN
$ERROR expected: 'String.bi'
$ENDIF

function String.fromByte$(this%%)
	String.fromByte = String.trim(str$(this%%))
end function

$ENDIF
