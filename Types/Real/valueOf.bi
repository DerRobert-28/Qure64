$IF QBTYPES_REAL_VALUEOF=UNDEFINED THEN
$LET QBTYPES_REAL_VALUEOF=DEFINED

$IF QBTYPES_REAL=UNDEFINED THEN
$ERROR expected: 'Real.bi'
$ENDIF

function Real.valueOf#(this$)
	Real.valueOf = val(ltrim$(this$))
end function

$ENDIF
