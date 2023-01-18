$IF QBUTILS_MATH_IF=UNDEFINED THEN
$LET QBUTILS_MATH_IF=DEFINED

$IF QBUTILS_MATH=UNDEFINED THEN
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
