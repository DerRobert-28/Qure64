$IF QBUTILS_MATH_SIN=UNDEFINED THEN
$LET QBUTILS_MATH_SIN=DEFINED

$IF QBUTILS_MATH=UNDEFINED THEN
$ERROR expected: 'Math.bi'
$ENDIF

function Math.Sin##(this##)
	Math.Sin = sin(this##)
end function

$ENDIF
