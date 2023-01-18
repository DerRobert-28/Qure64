$IF QBTYPES_REAL_IF=UNDEFINED THEN
$LET QBTYPES_REAL_IF=DEFINED

$IF QBTYPES_REAL=UNDEFINED THEN
$ERROR expected: 'Real.bi'
$ENDIF

function Real.if##(this%%, first##, second##)
	if this%% then Real.if = first## else Real.if = second##
end function

$ENDIF
