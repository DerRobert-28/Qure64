$IF QBCC_TYPES_BYTE_VALUEOF=UNDEFINED THEN
$LET QBCC_TYPES_BYTE_VALUEOF=DEFINED

$IF QBCC_TYPES_BYTE=UNDEFINED THEN
$ERROR expected: 'Byte.bi'
$ENDIF

function Byte.valueOf%%(this$)
	Byte.valueOf = val(ltrim$(this$))
end function

$ENDIF
