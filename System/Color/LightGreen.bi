$IF QURE64_SYSTEM_COLOR_LIGHTGREEN=UNDEFINED THEN
$LET QURE64_SYSTEM_COLOR_LIGHTGREEN=DEFINED

function Color.LightGreen&()
	Color.LightGreen = Color.of(127, 255, 127)
end function

$ENDIF