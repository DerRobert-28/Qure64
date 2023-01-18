$IF QBCC_TYPES_SHORT_VALUEOF=UNDEFINED THEN
$LET QBCC_TYPES_SHORT_VALUEOF=DEFINED

$IF QBCC_TYPES_SHORT=UNDEFINED THEN
$ERROR expected: 'Short.bi'
$ENDIF

function Short.valueOf%(this$)
	Short.valueOf = val(ltrim$(this$))
end function

$ENDIF
