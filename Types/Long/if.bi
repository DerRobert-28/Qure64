$IF QB64CC_TYPES_LONG_IF=UNDEFINED THEN
$LET QB64CC_TYPES_LONG_IF=DEFINED

$IF QB64CC_TYPES_LONG=UNDEFINED THEN
$ERROR expected: 'Long.bi'
$ENDIF

function Long.if&(this%%, first&, second&)
	if this%% then Long.if = first& else Long.if = second&
end function

$ENDIF
