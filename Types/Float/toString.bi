$IF QBCC_TYPES_FLOAT_TOSTRING=UNDEFINED THEN
$LET QBCC_TYPES_FLOAT_TOSTRING=DEFINED

$IF QBCC_TYPES_FLOAT=UNDEFINED THEN
$ERROR expected: 'Float.bi'
$ENDIF

function Float.toString$(this!)
	Float.toString = ltrim$(str$(this!))
end function

$ENDIF
