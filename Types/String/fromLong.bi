$IF QBTYPES_STRING_FROMLONG=UNDEFINED THEN
$LET QBTYPES_STRING_FROMLONG=DEFINED

$IF QBTYPES_STRING=UNDEFINED THEN
$ERROR expected: 'String.bi'
$ENDIF

function String.fromLong$(this&)
	String.fromLong = String.trim(str$(this&))
end function

$ENDIF
