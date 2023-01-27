$IF QB64CC_TYPES_BYTE_VALUEOF=UNDEFINED THEN
$LET QB64CC_TYPES_BYTE_VALUEOF=DEFINED

$IF QB64CC_TYPES_BYTE=UNDEFINED THEN
$ERROR expected: 'Byte.bi'
$ENDIF

function Byte.valueOf%%(this$)
	Byte.valueOf = val(ltrim$(this$))
end function

$ENDIF
