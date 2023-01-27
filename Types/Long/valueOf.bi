$IF QB64CC_TYPES_LONG_VALUEOF=UNDEFINED THEN
$LET QB64CC_TYPES_LONG_VALUEOF=DEFINED

$IF QB64CC_TYPES_LONG=UNDEFINED THEN
$ERROR expected: 'Long.bi'
$ENDIF

function Long.valueOf&(this$)
	Long.valueOf = val(ltrim$(this$))
end function

$ENDIF
