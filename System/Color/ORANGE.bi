$IF QB64CC_SYSTEM_COLOR_ORANGE=UNDEFINED THEN
$LET QB64CC_SYSTEM_COLOR_ORANGE=DEFINED

$IF QB64CC_SYSTEM_COLOR=UNDEFINED THEN
$ERROR expected: 'Color.bi'
$ENDIF

function Color.ORANGE&()
	Color.ORANGE = Color.of(255, 127, 0)
end function

$ENDIF
