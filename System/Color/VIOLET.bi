$IF QB64CC_SYSTEM_COLOR_VIOLET=UNDEFINED THEN
$LET QB64CC_SYSTEM_COLOR_VIOLET=DEFINED

$IF QB64CC_SYSTEM_COLOR=UNDEFINED THEN
$ERROR expected: 'Color.bi'
$ENDIF

function Color.VIOLET&()
	Color.VIOLET = Color.of(127, 0, 255)
end function

$ENDIF
