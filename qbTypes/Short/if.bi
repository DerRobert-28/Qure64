$IF QBTYPES_SHORT_IF=UNDEFINED THEN
$LET QBTYPES_SHORT_IF=DEFINED

$IF QBTYPES_SHORT=UNDEFINED THEN
$ERROR expected: 'Short.bi'
$ENDIF

function Short.if%(this%%, first%, second%)
	if this%% then Short.if = first% else Short.if = second%
end function

$ENDIF
