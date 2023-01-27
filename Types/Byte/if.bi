$IF QB64CC_TYPES_BYTE_IF=UNDEFINED THEN
$LET QB64CC_TYPES_BYTE_IF=DEFINED

$IF QB64CC_TYPES_BYTE=UNDEFINED THEN
$ERROR expected: 'Byte.bi'
$ENDIF

function Byte.if%%(this%, first%%, second%%)
	if this% then Byte.if = first%% else Byte.if = second%%
end function

$ENDIF
