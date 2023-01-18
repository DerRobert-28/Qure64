$IF QBUTILS_MATH_CBRT=UNDEFINED THEN
$LET QBUTILS_MATH_CBRT=DEFINED

$IF QBUTILS_MATH=UNDEFINED THEN
$ERROR expected: 'Math.bi'
$ENDIF

function Math.CbRt##(this##)
	Math.CbRt = Math.Sign(this##) * Math.Pow(Math.Abs(this##), Math.Reciprocal(3##))
end function

$ENDIF
