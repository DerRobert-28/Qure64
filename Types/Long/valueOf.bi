$IF QBCC_TYPES_LONG_VALUEOF=UNDEFINED THEN
$LET QBCC_TYPES_LONG_VALUEOF=DEFINED

$IF QBCC_TYPES_LONG=UNDEFINED THEN
$ERROR expected: 'Long.bi'
$ENDIF

function Long.valueOf&(this$)
	Long.valueOf = val(ltrim$(this$))
end function

$ENDIF
