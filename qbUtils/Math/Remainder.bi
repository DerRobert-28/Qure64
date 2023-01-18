$IF QBUTILS_MATH_REMAINDER=UNDEFINED THEN
$LET QBUTILS_MATH_REMAINDER=DEFINED

$IF QBUTILS_MATH=UNDEFINED THEN
$ERROR expected: 'Math.bi'
$ENDIF

function Math.Remainder&&(first&&, second&&)
	Math.Remainder = first&& mod second&&
end function

$ENDIF
