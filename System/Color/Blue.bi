$IF QURE64_SYSTEM_COLOR_BLUE=UNDEFINED THEN
$LET QURE64_SYSTEM_COLOR_BLUE=DEFINED

function Color.Blue&()
	Color.Blue = Color.of(0, 0, 255)
end function

$ENDIF
