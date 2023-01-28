$IF QB64CC_TYPES_BYTE=UNDEFINED THEN
$LET QB64CC_TYPES_BYTE=DEFINED

function Byte.if%%(this%, first%%, second%%)
	if this% then Byte.if = first%% else Byte.if = second%%
end function

function Byte.toString$(this%%)
	Byte.toString = ltrim$(str$(this%%))
end function

function Byte.valueOf%%(this$)
	Byte.valueOf = val(ltrim$(this$))
end function

$ENDIF
