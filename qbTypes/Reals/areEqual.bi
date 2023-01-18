$IF QBTYPES_REALS_AREEQUAL=UNDEFINED THEN
$LET QBTYPES_REALS_AREEQUAL=DEFINED

$IF QBTYPES_REALS=UNDEFINED THEN
$ERROR expected: 'Reals.bi'
$ENDIF

function Reals.areEqual%%(this##, value##)
	Reals.areEqual = (this## = value##)
end function

$ENDIF
