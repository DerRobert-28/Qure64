$IF QBUTILS_MATH_SQUARE=UNDEFINED THEN
$LET QBUTILS_MATH_SQUARE=DEFINED

$IF QBUTILS_MATH=UNDEFINED THEN
$ERROR expected: 'Math.bi'
$ENDIF

function Math.Square##(this##)
	Math.Square = this## * this##
end function

$ENDIF
