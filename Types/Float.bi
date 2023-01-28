$IF QB64CC_TYPES_FLOAT=UNDEFINED THEN
$LET QB64CC_TYPES_FLOAT=DEFINED

function Float.if!(this%%, first!, second!)
	if this%% then Float.if = first! else Float.if = second!
end function

function Float.toString$(this!)
	Float.toString = ltrim$(str$(this!))
end function

function Float.valueOf!(this$)
	Float.valueOf = val(ltrim$(this$))
end function

$ENDIF
