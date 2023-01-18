$IF QBCC_TYPES_DOUBLE_VALUEOF=UNDEFINED THEN
$LET QBCC_TYPES_DOUBLE_VALUEOF=DEFINED

$IF QBCC_TYPES_DOUBLE=UNDEFINED THEN
$ERROR expected: 'Double.bi'
$ENDIF

function Double.valueOf#(this$)
	Double.valueOf = val(ltrim$(this$))
end function

$ENDIF
