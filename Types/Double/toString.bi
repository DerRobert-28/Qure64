$IF QB64CC_TYPES_DOUBLE_TOSTRING=UNDEFINED THEN
$LET QB64CC_TYPES_DOUBLE_TOSTRING=DEFINED

$IF QB64CC_TYPES_DOUBLE=UNDEFINED THEN
$ERROR expected: 'Double.bi'
$ENDIF

function Double.toString$(this#)
	Double.toString = ltrim$(str$(this#))
end function

$ENDIF
