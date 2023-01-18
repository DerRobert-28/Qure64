$IF QBCC_TYPES_REAL_VALUEOF=UNDEFINED THEN
$LET QBCC_TYPES_REAL_VALUEOF=DEFINED

$IF QBCC_TYPES_REAL=UNDEFINED THEN
$ERROR expected: 'Real.bi'
$ENDIF

function Real.valueOf#(this$)
	Real.valueOf = val(ltrim$(this$))
end function

$ENDIF
