$IF QB64CC_UTILS_MATH_IFACTORIAL=UNDEFINED THEN
$LET QB64CC_UTILS_MATH_IFACTORIAL=DEFINED

$IF QB64CC_UTILS_MATH=UNDEFINED THEN
$ERROR expected: 'Math.bi'
$ENDIF

function Math.IFactorial~&&(this%)
	if this% < 0 then
		error 5
	elseif this% = 0 then
		Math.IFactorial = 1~&&
	else
		Math.IFactorial = this% * Math.IFactorial(this% - 1)
	endif
end function

$ENDIF
