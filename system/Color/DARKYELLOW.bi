$IF QBCC_SYSTEM_COLOR_DARKYELLOW=UNDEFINED THEN
$LET QBCC_SYSTEM_COLOR_DARKYELLOW=DEFINED

$IF QBCC_SYSTEM_COLOR=UNDEFINED THEN
$ERROR expected: 'Color.bi'
$ENDIF

function Color.DARKYELLOW&()
	Color.DARKYELLOW = Color.of(127, 127, 0)
end function

$ENDIF
