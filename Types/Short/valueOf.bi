$IF QB64CC_TYPES_SHORT_VALUEOF=UNDEFINED THEN
$LET QB64CC_TYPES_SHORT_VALUEOF=DEFINED

$IF QB64CC_TYPES_SHORT=UNDEFINED THEN
$ERROR expected: 'Short.bi'
$ENDIF

function Short.valueOf%(this$)
	Short.valueOf = val(ltrim$(this$))
end function

$ENDIF
