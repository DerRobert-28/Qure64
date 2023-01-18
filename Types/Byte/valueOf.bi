$IF QBTYPES_BYTE_VALUEOF=UNDEFINED THEN
$LET QBTYPES_BYTE_VALUEOF=DEFINED

$IF QBTYPES_BYTE=UNDEFINED THEN
$ERROR expected: 'Byte.bi'
$ENDIF

function Byte.valueOf%%(this$)
	Byte.valueOf = val(ltrim$(this$))
end function

$ENDIF
