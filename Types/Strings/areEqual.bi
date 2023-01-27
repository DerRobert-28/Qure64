$IF QB64CC_TYPES_STRINGS_AREEQUAL=UNDEFINED THEN
$LET QB64CC_TYPES_STRINGS_AREEQUAL=DEFINED

$IF QB64CC_TYPES_STRINGS=UNDEFINED THEN
$ERROR expected: 'Strings.bi'
$ENDIF

function Strings.areEqual%%(first$, second$)
	Strings.areEqual = (first$ = second$)
end function

$ENDIF
