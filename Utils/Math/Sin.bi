$IF QB64CC_UTILS_MATH_SIN=UNDEFINED THEN
$LET QB64CC_UTILS_MATH_SIN=DEFINED

$IF QB64CC_UTILS_MATH=UNDEFINED THEN
$ERROR expected: 'Math.bi'
$ENDIF

function Math.Sin##(this##)
	Math.Sin = sin(this##)
end function

$ENDIF
