$IF QBCC_TYPES_INTEGER_IF=UNDEFINED THEN
$LET QBCC_TYPES_INTEGER_IF=DEFINED

$IF QBCC_TYPES_INTEGER=UNDEFINED THEN
$ERROR expected: 'Integer.bi'
$ENDIF

function Integer.if&&(this%%, first&&, second&&)
	if this%% then Integer.if = first&& else Integer.if = second&&
end function

$ENDIF
