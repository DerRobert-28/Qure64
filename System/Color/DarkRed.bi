$IF QURE64_SYSTEM_COLOR_DARKRED=UNDEFINED THEN
$LET QURE64_SYSTEM_COLOR_DARKRED=DEFINED

function Color.DarkRed&()
	Color.DarkRed = Color.of(127, 0, 0)
end function

$ENDIF
