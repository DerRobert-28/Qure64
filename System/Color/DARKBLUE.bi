$IF QB64CC_SYSTEM_COLOR_DARKBLUE=UNDEFINED THEN
$LET QB64CC_SYSTEM_COLOR_DARKBLUE=DEFINED

$IF QB64CC_SYSTEM_COLOR=UNDEFINED THEN
$ERROR expected: 'Color.bi'
$ENDIF

function Color.DARKBLUE&()
	Color.DARKBLUE = Color.of(0, 0, 127)
end function

$ENDIF
