$IF QB64CC_TYPES_LONG_TOSTRING=UNDEFINED THEN
$LET QB64CC_TYPES_LONG_TOSTRING=DEFINED

$IF QB64CC_TYPES_LONG=UNDEFINED THEN
$ERROR expected: 'Long.bi'
$ENDIF

function Long.toString$(this&)
	Long.toString = ltrim$(str$(this&))
end function

$ENDIF
