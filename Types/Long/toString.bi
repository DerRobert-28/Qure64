$IF QBCC_TYPES_LONG_TOSTRING=UNDEFINED THEN
$LET QBCC_TYPES_LONG_TOSTRING=DEFINED

$IF QBCC_TYPES_LONG=UNDEFINED THEN
$ERROR expected: 'Long.bi'
$ENDIF

function Long.toString$(this&)
	Long.toString = ltrim$(str$(this&))
end function

$ENDIF
