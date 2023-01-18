$IF QBCC_TYPES_INTEGER_TOSTRING=UNDEFINED THEN
$LET QBCC_TYPES_INTEGER_TOSTRING=DEFINED

$IF QBCC_TYPES_INTEGER=UNDEFINED THEN
$ERROR expected: 'Integer.bi'
$ENDIF

function Integer.toString$(this&&)
	Integer.toString = ltrim$(str$(this&&))
end function

$ENDIF
