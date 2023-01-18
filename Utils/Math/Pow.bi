$IF QBCC_UTILS_MATH_POW=UNDEFINED THEN
$LET QBCC_UTILS_MATH_POW=DEFINED

$IF QBCC_UTILS_MATH=UNDEFINED THEN
$ERROR expected: 'Math.bi'
$ENDIF

function Math.Pow##(basis##, exponent##)
	Math.Pow = basis## ^ exponent##
end function

$ENDIF
