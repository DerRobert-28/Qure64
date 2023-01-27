$IF QB64CC_TYPES_FLOAT_IF=UNDEFINED THEN
$LET QB64CC_TYPES_FLOAT_IF=DEFINED

$IF QB64CC_TYPES_FLOAT=UNDEFINED THEN
$ERROR expected: 'Float.bi'
$ENDIF

function Float.if!(this%%, first!, second!)
	if this%% then Float.if = first! else Float.if = second!
end function

$ENDIF
