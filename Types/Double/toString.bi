$IF QBCC_TYPES_DOUBLE_TOSTRING=UNDEFINED THEN
$LET QBCC_TYPES_DOUBLE_TOSTRING=DEFINED

$IF QBCC_TYPES_DOUBLE=UNDEFINED THEN
$ERROR expected: 'Double.bi'
$ENDIF

function Double.toString$(this#)
	Double.toString = ltrim$(str$(this#))
end function

$ENDIF
