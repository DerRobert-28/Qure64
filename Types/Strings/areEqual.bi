$IF QBCC_TYPES_STRINGS_AREEQUAL=UNDEFINED THEN
$LET QBCC_TYPES_STRINGS_AREEQUAL=DEFINED

$IF QBCC_TYPES_STRINGS=UNDEFINED THEN
$ERROR expected: 'Strings.bi'
$ENDIF

function Strings.areEqual%%(first$, second$)
	Strings.areEqual = (first$ = second$)
end function

$ENDIF
