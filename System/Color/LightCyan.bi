$IF QURE64_SYSTEM_COLOR_LIGHTCYAN=UNDEFINED THEN
$LET QURE64_SYSTEM_COLOR_LIGHTCYAN=DEFINED

function Color.LightCyan&()
	Color.LightCyan = Color.of(127, 255, 255)
end function

$ENDIF
