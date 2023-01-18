$IF QBTYPES_LONG_TOSTRING=UNDEFINED THEN
$LET QBTYPES_LONG_TOSTRING=DEFINED

$IF QBTYPES_LONG=UNDEFINED THEN
$ERROR expected: 'Long.bi'
$ENDIF

function Long.toString$(this&)
	Long.toString = ltrim$(str$(this&))
end function

$ENDIF
