$IF QB64CC_TYPES_CHAR_IF=UNDEFINED THEN
$LET QB64CC_TYPES_CHAR_IF=DEFINED

$IF QB64CC_TYPES_CHAR=UNDEFINED THEN
$ERROR expected: 'Char.bi'
$ENDIF

function Char.if$(this%%, first$, second$)
	if this%% then Char.if = Char.of(first$) else Char.if = Char.of(second$)
end function

$ENDIF
