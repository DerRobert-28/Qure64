$IF QBCC_SYSTEM_COLOR_CYAN=UNDEFINED THEN
$LET QBCC_SYSTEM_COLOR_CYAN=DEFINED

$IF QBCC_SYSTEM_COLOR=UNDEFINED THEN
$ERROR expected: 'Color.bi'
$ENDIF

function Color.CYAN&()
	Color.CYAN = Color.of(0, 255, 255)
end function

$ENDIF
