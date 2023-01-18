$IF QBCC_SYSTEM_COLOR_OF=UNDEFINED THEN
$LET QBCC_SYSTEM_COLOR_OF=DEFINED

$IF QBCC_SYSTEM_COLOR=UNDEFINED THEN
$ERROR expected: 'Color.bi'
$ENDIF

function Color.of&(red%, green%, blue%)
	Color.of = _rgb(red% and 255, green% and 255, blue% and 255)
end function

$ENDIF
