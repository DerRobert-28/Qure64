$IF QURE64_SYSTEM_COLOR_CYAN=UNDEFINED THEN
$LET QURE64_SYSTEM_COLOR_CYAN=DEFINED

function Color.Cyan&()
	Color.Cyan = Color.of(0, 255, 255)
end function

$ENDIF
