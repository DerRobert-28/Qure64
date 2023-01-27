$IF QB64CC_TYPES_REAL_VALUEOF=UNDEFINED THEN
$LET QB64CC_TYPES_REAL_VALUEOF=DEFINED

$IF QB64CC_TYPES_REAL=UNDEFINED THEN
$ERROR expected: 'Real.bi'
$ENDIF

function Real.valueOf#(this$)
	Real.valueOf = val(ltrim$(this$))
end function

$ENDIF
