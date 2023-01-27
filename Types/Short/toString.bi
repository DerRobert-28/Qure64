$IF QB64CC_TYPES_SHORT_TOSTRING=UNDEFINED THEN
$LET QB64CC_TYPES_SHORT_TOSTRING=DEFINED

$IF QB64CC_TYPES_SHORT=UNDEFINED THEN
$ERROR expected: 'Short.bi'
$ENDIF

function Short.toString$(this%)
	Short.toString = ltrim$(str$(this%))
end function

$ENDIF
