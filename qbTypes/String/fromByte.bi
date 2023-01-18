$IF QBTYPES_STRING_FROMBYTE=UNDEFINED THEN
$LET QBTYPES_STRING_FROMBYTE=DEFINED

$IF QBTYPES_STRING=UNDEFINED THEN
$ERROR expected: 'String.bi'
$ENDIF

function String.fromByte$(this%%)
	String.fromByte = String.trim(str$(this%%))
end function

$ENDIF
