$IF QB64CC_UTILS_MATH_COS=UNDEFINED THEN
$LET QB64CC_UTILS_MATH_COS=DEFINED

$IF QB64CC_UTILS_MATH=UNDEFINED THEN
$ERROR expected: 'Math.bi'
$ENDIF

function Math.Cos##(this##)
	Math.Cos = cos(this##)
end function

$ENDIF
