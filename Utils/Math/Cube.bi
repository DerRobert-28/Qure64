$IF QBCC_UTILS_MATH_CUBE=UNDEFINED THEN
$LET QBCC_UTILS_MATH_CUBE=DEFINED

$IF QBCC_UTILS_MATH=UNDEFINED THEN
$ERROR expected: 'Math.bi'
$ENDIF

function Math.Cube##(this##)
	Math.Cube = this## * this## * this##
end function

$ENDIF
