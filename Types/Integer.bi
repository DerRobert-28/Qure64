$IF QB64CC_TYPES_INTEGER=UNDEFINED THEN
$LET QB64CC_TYPES_INTEGER=DEFINED

function Integer.if&&(this%%, first&&, second&&)
	if this%% then Integer.if = first&& else Integer.if = second&&
end function

function Integer.toString$(this&&)
	Integer.toString = ltrim$(str$(this&&))
end function

function Integer.valueOf&&(this$)
	Integer.valueOf = val(ltrim$(this$))
end function

$ENDIF
