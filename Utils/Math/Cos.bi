$IF QBUTILS_MATH_COS=UNDEFINED THEN
$LET QBUTILS_MATH_COS=DEFINED

$IF QBUTILS_MATH=UNDEFINED THEN
$ERROR expected: 'Math.bi'
$ENDIF

function Math.Cos##(this##)
	Math.Cos = cos(this##)
end function

$ENDIF
