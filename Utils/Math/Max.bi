$IF QBCC_UTILS_MATH_MAX=UNDEFINED THEN
$LET QBCC_UTILS_MATH_MAX=DEFINED

$IF QBCC_UTILS_MATH=UNDEFINED THEN
$ERROR expected: 'Math.bi'
$ENDIF

function Math.Max##(first##, second##)
	Math.Max = Math.If(first## > second, first##, second##)
end function

function Math.Max2##(first##, second##, third##)
	Math.Max2 = Math.Max(Math.Max(first##, second##), third##)
end function

$ENDIF
