$IF QURE64_SYSTEM_COLOR_DEFAULT=UNDEFINED THEN
$LET QURE64_SYSTEM_COLOR_DEFAULT=DEFINED

function Color.default&()
	Color.default = -1
end function

$ENDIF