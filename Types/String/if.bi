$IF QBTYPES_STRING_IF=UNDEFINED THEN
$LET QBTYPES_STRING_IF=DEFINED

$IF QBTYPES_STRING=UNDEFINED THEN
$ERROR expected: 'String.bi'
$ENDIF

function String.if$(this%%, first$, second$)
	if this%% then String.if = first$ else String.if = second$
end function

$ENDIF
