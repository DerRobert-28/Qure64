$IF QURE64_SYSTEM_COLOR_MAGENTA=UNDEFINED THEN
$LET QURE64_SYSTEM_COLOR_MAGENTA=DEFINED

function Color.Magenta&()
	Color.Magenta = Color.of(255, 0, 255)
end function

$ENDIF