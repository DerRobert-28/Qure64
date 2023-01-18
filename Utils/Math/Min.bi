$IF QBCC_UTILS_MATH_MIN=UNDEFINED THEN
$LET QBCC_UTILS_MATH_MIN=DEFINED

$IF QBCC_UTILS_MATH=UNDEFINED THEN
$ERROR expected: 'Math.bi'
$ENDIF

function Math.Min##(first##, second##)
	Math.Min = Math.If(first## < second, first##, second##)
end function

function Math.Min2##(first##, second##, third##)
	Math.Min2 = Math.Min(Math.Min(first##, second##), third##)
end function

$ENDIF
