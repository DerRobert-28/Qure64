$IF QBCC_COLOR_LIGHTBLUE=UNDEFINED THEN
$LET QBCC_COLOR_LIGHTBLUE=DEFINED

$IF QBCC_COLOR=UNDEFINED THEN
$ERROR expected: 'Color.bi'
$ENDIF

function Color.LIGHTBLUE&()
	Color.LIGHTBLUE = Color.of(127, 127, 255)
end function

$ENDIF
