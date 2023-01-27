$IF QB64CC_TYPES_STRINGS_AREEQUALIGNORECASE=UNDEFINED THEN
$LET QB64CC_TYPES_STRINGS_AREEQUALIGNORECASE=DEFINED

$IF QB64CC_TYPES_STRINGS=UNDEFINED THEN
$ERROR expected: 'Strings.bi'
$ENDIF

$IF QB64CC_TYPES_STRING=UNDEFINED THEN
$ERROR expected: 'String.bi'
$ENDIF

function Strings.areEqualIgnoreCase%%(first$, second$)
	Strings.areEqualIgnoreCase = (String.toLower(first$) = String.toLower(second$))
end function

$ENDIF
