$IF QURE64_SYSTEM_COLOR_LIGHTMAGENTA=UNDEFINED THEN
$LET QURE64_SYSTEM_COLOR_LIGHTMAGENTA=DEFINED

function Color.LightMagenta&()
	Color.LightMagenta = Color.of(255, 127, 255)
end function

$ENDIF
