$IF QBTYPES_STRINGS_AREEQUAL=UNDEFINED THEN
$LET QBTYPES_STRINGS_AREEQUAL=DEFINED

$IF QBTYPES_STRINGS=UNDEFINED THEN
$ERROR expected: 'Strings.bi'
$ENDIF

function Strings.areEqual%%(first$, second$)
	Strings.areEqual = (first$ = second$)
end function

$ENDIF
