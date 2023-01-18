$IF QBUTILS_MATH_SIGN=UNDEFINED THEN
$LET QBUTILS_MATH_SIGN=DEFINED

$IF QBUTILS_MATH=UNDEFINED THEN
$ERROR expected: 'Math.bi'
$ENDIF

function Math.Sign%(this##)
	Math.Sign = sgn(this##)
end function

$ENDIF
