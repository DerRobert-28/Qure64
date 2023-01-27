$IF QB64CC_TYPES_FLOAT_VALUEOF=UNDEFINED THEN
$LET QB64CC_TYPES_FLOAT_VALUEOF=DEFINED

$IF QB64CC_TYPES_FLOAT=UNDEFINED THEN
$ERROR expected: 'Float.bi'
$ENDIF

function Float.valueOf!(this$)
	Float.valueOf = val(ltrim$(this$))
end function

$ENDIF
