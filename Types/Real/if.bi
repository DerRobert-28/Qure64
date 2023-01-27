$IF QB64CC_TYPES_REAL_IF=UNDEFINED THEN
$LET QB64CC_TYPES_REAL_IF=DEFINED

$IF QB64CC_TYPES_REAL=UNDEFINED THEN
$ERROR expected: 'Real.bi'
$ENDIF

function Real.if##(this%%, first##, second##)
	if this%% then Real.if = first## else Real.if = second##
end function

$ENDIF
