$IF QBTYPES_DOUBLE_TOSTRING=UNDEFINED THEN
$LET QBTYPES_DOUBLE_TOSTRING=DEFINED

$IF QBTYPES_DOUBLE=UNDEFINED THEN
$ERROR expected: 'Double.bi'
$ENDIF

function Double.toString$(this#)
	Double.toString = ltrim$(str$(this#))
end function

$ENDIF
