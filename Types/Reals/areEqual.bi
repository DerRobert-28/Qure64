$IF QB64CC_TYPES_REALS_AREEQUAL=UNDEFINED THEN
$LET QB64CC_TYPES_REALS_AREEQUAL=DEFINED

$IF QB64CC_TYPES_REALS=UNDEFINED THEN
$ERROR expected: 'Reals.bi'
$ENDIF

function Reals.areEqual%%(this##, value##)
	Reals.areEqual = (this## = value##)
end function

$ENDIF
