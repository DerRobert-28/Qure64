$IF QBTYPES_STRINGS_AREEQUALIGNORECASE=UNDEFINED THEN
$LET QBTYPES_STRINGS_AREEQUALIGNORECASE=DEFINED

$IF QBTYPES_STRINGS=UNDEFINED THEN
$ERROR expected: 'Strings.bi'
$ENDIF

$IF QBTYPES_STRING=UNDEFINED THEN
$ERROR expected: 'String.bi'
$ENDIF

function Strings.areEqualIgnoreCase%%(first$, second$)
	Strings.areEqualIgnoreCase = (String.toLower(first$) = String.toLower(second$))
end function

$ENDIF
