$IF QBCC_TYPES_LONG_IF=UNDEFINED THEN
$LET QBCC_TYPES_LONG_IF=DEFINED

$IF QBCC_TYPES_LONG=UNDEFINED THEN
$ERROR expected: 'Long.bi'
$ENDIF

function Long.if&(this%%, first&, second&)
	if this%% then Long.if = first& else Long.if = second&
end function

$ENDIF
