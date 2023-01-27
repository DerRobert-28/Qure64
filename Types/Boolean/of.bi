$IF QB64CC_TYPES_BOOLEAN_OF=UNDEFINED THEN
$LET QB64CC_TYPES_BOOLEAN_OF=DEFINED

$IF QB64CC_TYPES_BOOLEAN=UNDEFINED THEN
$ERROR expected: 'Boolean.bi'
$ENDIF

function Boolean.of$(this%%)
	if this%% then
		Boolean.of = "true"
	else
		Boolean.of = "false"
	endif
end function

$ENDIF
