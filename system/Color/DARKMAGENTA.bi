$IF QBCC_SYSTEM_COLOR_DARKMAGENTA=UNDEFINED THEN
$LET QBCC_SYSTEM_COLOR_DARKMAGENTA=DEFINED

$IF QBCC_SYSTEM_COLOR=UNDEFINED THEN
$ERROR expected: 'Color.bi'
$ENDIF

function Color.DARKMAGENTA&()
	Color.DARKMAGENTA = Color.of(127, 0, 127)
end function

$ENDIF
