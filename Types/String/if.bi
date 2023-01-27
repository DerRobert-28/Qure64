$IF QB64CC_TYPES_STRING_IF=UNDEFINED THEN
$LET QB64CC_TYPES_STRING_IF=DEFINED

$IF QB64CC_TYPES_STRING=UNDEFINED THEN
$ERROR expected: 'String.bi'
$ENDIF

function String.if$(this%%, first$, second$)
	if this%% then String.if = first$ else String.if = second$
end function

$ENDIF
