$IF QURE64_CC_SYSTEM_COLOR_LIGHTRED=UNDEFINED THEN
$LET QURE64_CC_SYSTEM_COLOR_LIGHTRED=DEFINED

function Color.LightRed&()
	Color.LightRed = Color.of(255, 127, 127)
end function

$ENDIF
