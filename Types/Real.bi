$IF QB64CC_TYPES_REAL=UNDEFINED THEN
$LET QB64CC_TYPES_REAL=DEFINED

function Real.if##(this%%, first##, second##)
	if this%% then Real.if = first## else Real.if = second##
end function

function Real.toString$(this##)
	Real.toString = ltrim$(str$(this##))
end function

function Real.valueOf#(this$)
	Real.valueOf = val(ltrim$(this$))
end function

$ENDIF
