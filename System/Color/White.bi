$IF QURE64_SYSTEM_COLOR_WHITE=UNDEFINED THEN
$LET QURE64_SYSTEM_COLOR_WHITE=DEFINED

function Color.White&()
	Color.White = Color.of(255, 255, 255)
end function

$ENDIF
