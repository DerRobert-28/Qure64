$IF QURE64_CC_SYSTEM_COLOR_OF=UNDEFINED THEN
$LET QURE64_CC_SYSTEM_COLOR_OF=DEFINED

function Color.of&(red%, green%, blue%)
	Color.of = _rgb(red% and 255, green% and 255, blue% and 255)
end function

$ENDIF
