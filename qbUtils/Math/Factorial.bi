$IF QBUTILS_MATH_FACTORIAL=UNDEFINED THEN
$LET QBUTILS_MATH_FACTORIAL=DEFINED

$IF QBUTILS_MATH=UNDEFINED THEN
$ERROR expected: 'Math.bi'
$ENDIF

function Math.Factorial##(this%)
	if this% < 0 then
		error 5	
	elseif this% = 0 then
		Math.Factorial = 1##
	else
		Math.Factorial = this% * Math.Factorial(this% - 1)
	endif
end function

$ENDIF
