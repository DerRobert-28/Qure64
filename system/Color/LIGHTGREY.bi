$IF QBCC_COLOR_LIGHTGREY=UNDEFINED THEN
$LET QBCC_COLOR_LIGHTGREY=DEFINED

$IF QBCC_COLOR=UNDEFINED THEN
$ERROR expected: 'Color.bi'
$ENDIF

function Color.LIGHTGREY&()
	Color.LIGHTGREY = Color.of(170, 170, 170)
end function

$ENDIF
