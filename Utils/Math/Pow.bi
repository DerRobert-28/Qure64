$IF QBUTILS_MATH_POW=UNDEFINED THEN
$LET QBUTILS_MATH_POW=DEFINED

$IF QBUTILS_MATH=UNDEFINED THEN
$ERROR expected: 'Math.bi'
$ENDIF

function Math.Pow##(basis##, exponent##)
	Math.Pow = basis## ^ exponent##
end function

$ENDIF
