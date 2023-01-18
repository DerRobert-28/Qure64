$IF QBCC_UTILS_MATH_COS=UNDEFINED THEN
$LET QBCC_UTILS_MATH_COS=DEFINED

$IF QBCC_UTILS_MATH=UNDEFINED THEN
$ERROR expected: 'Math.bi'
$ENDIF

function Math.Cos##(this##)
	Math.Cos = cos(this##)
end function

$ENDIF
