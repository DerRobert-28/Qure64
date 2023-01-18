$IF QBCC_UTILS_MATH_SQRT=UNDEFINED THEN
$LET QBCC_UTILS_MATH_SQRT=DEFINED

$IF QBCC_UTILS_MATH=UNDEFINED THEN
$ERROR expected: 'Math.bi'
$ENDIF

function Math.SqRt##(this##)
	Math.SqRt = sqr(this##)
end function

$ENDIF
