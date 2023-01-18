$IF QBTYPES_BYTE_IF=UNDEFINED THEN
$LET QBTYPES_BYTE_IF=DEFINED

$IF QBTYPES_BYTE=UNDEFINED THEN
$ERROR expected: 'Byte.bi'
$ENDIF

function Byte.if%%(this%, first%%, second%%)
	if this% then Byte.if = first%% else Byte.if = second%%
end function

$ENDIF
