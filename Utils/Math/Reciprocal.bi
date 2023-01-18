$IF QBCC_UTILS_MATH_RECIPROCAL=UNDEFINED THEN
$LET QBCC_UTILS_MATH_RECIPROCAL=DEFINED

$IF QBCC_UTILS_MATH=UNDEFINED THEN
$ERROR expected: 'Math.bi'
$ENDIF

function Math.Reciprocal##(this##)
	Math.Reciprocal = 1## / this##
end function

$ENDIF
