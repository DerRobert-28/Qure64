$IF QBTYPES_BYTE_TOSTRING=UNDEFINED THEN
$LET QBTYPES_BYTE_TOSTRING=DEFINED

$IF QBTYPES_BYTE=UNDEFINED THEN
$ERROR expected: 'Byte.bi'
$ENDIF

function Byte.toString$(this%%)
	Byte.toString = ltrim$(str$(this%%))
end function

$ENDIF
