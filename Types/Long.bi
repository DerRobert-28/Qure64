$IF QB64CC_TYPES_LONG=UNDEFINED THEN
$LET QB64CC_TYPES_LONG=DEFINED

function Long.if&(this%%, first&, second&)
	if this%% then Long.if = first& else Long.if = second&
end function

function Long.toString$(this&)
	Long.toString = ltrim$(str$(this&))
end function

function Long.valueOf&(this$)
	Long.valueOf = val(ltrim$(this$))
end function

$ENDIF
