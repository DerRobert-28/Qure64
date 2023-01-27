$IF QB64CC_UTILS_MATH_SQUARE=UNDEFINED THEN
$LET QB64CC_UTILS_MATH_SQUARE=DEFINED

$IF QB64CC_UTILS_MATH=UNDEFINED THEN
$ERROR expected: 'Math.bi'
$ENDIF

function Math.Square##(this##)
	Math.Square = this## * this##
end function

$ENDIF
