$IF QBCC_COLOR_GREY=UNDEFINED THEN
$LET QBCC_COLOR_GREY=DEFINED

$IF QBCC_COLOR=UNDEFINED THEN
$ERROR expected: 'Color.bi'
$ENDIF

function Color.GREY&()
	Color.GREY = Color.of(127, 127, 127)
end function

$ENDIF
