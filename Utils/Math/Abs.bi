$IF QBCC_UTILS_MATH_ABS=UNDEFINED THEN
$LET QBCC_UTILS_MATH_ABS=DEFINED

$IF QBCC_UTILS_MATH=UNDEFINED THEN
$ERROR expected: 'Math.bi'
$ENDIF

function Math.Abs##(this##)
	Math.Abs = abs(this##)
end function

$ENDIF
