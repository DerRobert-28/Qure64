$IF QBUTILS_MATH_CUBE=UNDEFINED THEN
$LET QBUTILS_MATH_CUBE=DEFINED

$IF QBUTILS_MATH=UNDEFINED THEN
$ERROR expected: 'Math.bi'
$ENDIF

function Math.Cube##(this##)
	Math.Cube = this## * this## * this##
end function

$ENDIF
