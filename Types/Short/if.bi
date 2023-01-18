$IF QBCC_TYPES_SHORT_IF=UNDEFINED THEN
$LET QBCC_TYPES_SHORT_IF=DEFINED

$IF QBCC_TYPES_SHORT=UNDEFINED THEN
$ERROR expected: 'Short.bi'
$ENDIF

function Short.if%(this%%, first%, second%)
	if this%% then Short.if = first% else Short.if = second%
end function

$ENDIF
