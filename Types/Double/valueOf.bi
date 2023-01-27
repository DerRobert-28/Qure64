$IF QB64CC_TYPES_DOUBLE_VALUEOF=UNDEFINED THEN
$LET QB64CC_TYPES_DOUBLE_VALUEOF=DEFINED

$IF QB64CC_TYPES_DOUBLE=UNDEFINED THEN
$ERROR expected: 'Double.bi'
$ENDIF

function Double.valueOf#(this$)
	Double.valueOf = val(ltrim$(this$))
end function

$ENDIF
