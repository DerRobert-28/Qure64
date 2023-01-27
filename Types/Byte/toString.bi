$IF QB64CC_TYPES_BYTE_TOSTRING=UNDEFINED THEN
$LET QB64CC_TYPES_BYTE_TOSTRING=DEFINED

$IF QB64CC_TYPES_BYTE=UNDEFINED THEN
$ERROR expected: 'Byte.bi'
$ENDIF

function Byte.toString$(this%%)
	Byte.toString = ltrim$(str$(this%%))
end function

$ENDIF
