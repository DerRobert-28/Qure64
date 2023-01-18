$IF QBUTILS_MATH_ABS=UNDEFINED THEN
$LET QBUTILS_MATH_ABS=DEFINED

$IF QBUTILS_MATH=UNDEFINED THEN
$ERROR expected: 'Math.bi'
$ENDIF

function Math.Abs##(this##)
	Math.Abs = abs(this##)
end function

$ENDIF
