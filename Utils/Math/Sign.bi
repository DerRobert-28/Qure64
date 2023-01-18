$IF QBCC_UTILS_MATH_SIGN=UNDEFINED THEN
$LET QBCC_UTILS_MATH_SIGN=DEFINED

$IF QBCC_UTILS_MATH=UNDEFINED THEN
$ERROR expected: 'Math.bi'
$ENDIF

function Math.Sign%(this##)
	Math.Sign = sgn(this##)
end function

$ENDIF
