$IF QBCC_SYSTEM_COLOR_LIGHTGRAY=UNDEFINED THEN
$LET QBCC_SYSTEM_COLOR_LIGHTGRAY=DEFINED

$IF QBCC_SYSTEM_COLOR=UNDEFINED THEN
$ERROR expected: 'Color.bi'
$ENDIF

function Color.LIGHTGRAY&()
	Color.LIGHTGRAY = Color.of(170, 170, 170)
end function

$ENDIF
