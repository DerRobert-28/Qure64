$IF QURE64_SYSTEM_COLOR_DARKMAGENTA=UNDEFINED THEN
$LET QURE64_SYSTEM_COLOR_DARKMAGENTA=DEFINED

function Color.DarkMagenta&()
	Color.DarkMagenta = Color.of(127, 0, 127)
end function

$ENDIF
