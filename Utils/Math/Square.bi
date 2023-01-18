$IF QBCC_UTILS_MATH_SQUARE=UNDEFINED THEN
$LET QBCC_UTILS_MATH_SQUARE=DEFINED

$IF QBCC_UTILS_MATH=UNDEFINED THEN
$ERROR expected: 'Math.bi'
$ENDIF

function Math.Square##(this##)
	Math.Square = this## * this##
end function

$ENDIF
