$IF QB64CC_TYPES_SHORT=UNDEFINED THEN
$LET QB64CC_TYPES_SHORT=DEFINED

function Short.if%(this%%, first%, second%)
	if this%% then Short.if = first% else Short.if = second%
end function

function Short.toString$(this%)
	Short.toString = ltrim$(str$(this%))
end function

function Short.valueOf%(this$)
	Short.valueOf = val(ltrim$(this$))
end function

$ENDIF
