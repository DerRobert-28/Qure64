$IF QBUTILS_MATH_RECIPROCAL=UNDEFINED THEN
$LET QBUTILS_MATH_RECIPROCAL=DEFINED

$IF QBUTILS_MATH=UNDEFINED THEN
$ERROR expected: 'Math.bi'
$ENDIF

function Math.Reciprocal##(this##)
	Math.Reciprocal = 1## / this##
end function

$ENDIF
