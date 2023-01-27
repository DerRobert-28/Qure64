$IF QB64CC_TYPES_INTEGER_VALUEOF=UNDEFINED THEN
$LET QB64CC_TYPES_INTEGER_VALUEOF=DEFINED

$IF QB64CC_TYPES_INTEGER=UNDEFINED THEN
$ERROR expected: 'Integer.bi'
$ENDIF

function Integer.valueOf&&(this$)
	Integer.valueOf = val(ltrim$(this$))
end function

$ENDIF
