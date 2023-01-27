$IF QB64CC_UTILS_MATH_REMAINDER=UNDEFINED THEN
$LET QB64CC_UTILS_MATH_REMAINDER=DEFINED

$IF QB64CC_UTILS_MATH=UNDEFINED THEN
$ERROR expected: 'Math.bi'
$ENDIF

function Math.Remainder&&(first&&, second&&)
	Math.Remainder = first&& mod second&&
end function

$ENDIF
