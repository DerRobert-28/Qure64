$IF QB64CC_TYPES_DOUBLE=UNDEFINED THEN
$LET QB64CC_TYPES_DOUBLE=DEFINED

function Double.if#(this%%, first#, second#)
	if this%% then Double.if = first# else Double.if = second#
end function

function Double.toString$(this#)
	Double.toString = ltrim$(str$(this#))
end function

function Double.valueOf#(this$)
	Double.valueOf = val(ltrim$(this$))
end function

$ENDIF
