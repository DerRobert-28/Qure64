$IF QURE64_SYSTEM_COLOR_GRAY=UNDEFINED THEN
$LET QURE64_SYSTEM_COLOR_GRAY=DEFINED

function Color.Gray&()
	Color.Gray = Color.of(127, 127, 127)
end function

$ENDIF