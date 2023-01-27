$IF QB64CC_UTILS_MATH_POW=UNDEFINED THEN
$LET QB64CC_UTILS_MATH_POW=DEFINED

$IF QB64CC_UTILS_MATH=UNDEFINED THEN
$ERROR expected: 'Math.bi'
$ENDIF

function Math.Pow##(basis##, exponent##)
	Math.Pow = basis## ^ exponent##
end function

$ENDIF
