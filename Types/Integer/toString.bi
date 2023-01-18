$IF QBTYPES_INTEGER_TOSTRING=UNDEFINED THEN
$LET QBTYPES_INTEGER_TOSTRING=DEFINED

$IF QBTYPES_INTEGER=UNDEFINED THEN
$ERROR expected: 'Integer.bi'
$ENDIF

function Integer.toString$(this&&)
	Integer.toString = ltrim$(str$(this&&))
end function

$ENDIF
