$IF QB64CC_TYPES_DOUBLE_IF=UNDEFINED THEN
$LET QB64CC_TYPES_DOUBLE_IF=DEFINED

$IF QB64CC_TYPES_DOUBLE=UNDEFINED THEN
$ERROR expected: 'Double.bi'
$ENDIF

function Double.if#(this%%, first#, second#)
	if this%% then Double.if = first# else Double.if = second#
end function

$ENDIF
