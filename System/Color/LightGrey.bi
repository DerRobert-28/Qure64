$IF QURE64_SYSTEM_COLOR_LIGHTGREY=UNDEFINED THEN
$LET QURE64_SYSTEM_COLOR_LIGHTGREY=DEFINED

function Color.LightGrey&()
	Color.LightGrey = Color.of(170, 170, 170)
end function

$ENDIF
