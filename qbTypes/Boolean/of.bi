$IF QBTYPES_BOOLEAN_OF=UNDEFINED THEN
$LET QBTYPES_BOOLEAN_OF=DEFINED

$IF QBTYPES_BOOLEAN=UNDEFINED THEN
$ERROR expected: 'Boolean.bi'
$ENDIF

function Boolean.of$(this%%)
	if this%% then
		Boolean.of = "true"
	else
		Boolean.of = "false"
	endif
end function

$ENDIF
