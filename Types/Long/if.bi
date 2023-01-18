$IF QBTYPES_LONG_IF=UNDEFINED THEN
$LET QBTYPES_LONG_IF=DEFINED

$IF QBTYPES_LONG=UNDEFINED THEN
$ERROR expected: 'Long.bi'
$ENDIF

function Long.if&(this%%, first&, second&)
	if this%% then Long.if = first& else Long.if = second&
end function

$ENDIF
