$IF QBUTILS_MATH_SQRT=UNDEFINED THEN
$LET QBUTILS_MATH_SQRT=DEFINED

$IF QBUTILS_MATH=UNDEFINED THEN
$ERROR expected: 'Math.bi'
$ENDIF

function Math.SqRt##(this##)
	Math.SqRt = sqr(this##)
end function

$ENDIF
