$IF QBCC_UTILS_MATH_REMAINDER=UNDEFINED THEN
$LET QBCC_UTILS_MATH_REMAINDER=DEFINED

$IF QBCC_UTILS_MATH=UNDEFINED THEN
$ERROR expected: 'Math.bi'
$ENDIF

function Math.Remainder&&(first&&, second&&)
	Math.Remainder = first&& mod second&&
end function

$ENDIF
