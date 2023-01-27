$IF QB64CC_UTILS_MATH_IF=UNDEFINED THEN
$LET QB64CC_UTILS_MATH_IF=DEFINED

$IF QB64CC_UTILS_MATH=UNDEFINED THEN
$ERROR expected: 'Math.bi'
$ENDIF

function Math.If##(this%%, first##, second##)
	if this%% then
		Math.If = first##
	else
		MAth.If = second##
	endif
end function

$ENDIF
