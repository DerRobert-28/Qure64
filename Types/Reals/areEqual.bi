$IF QBCC_TYPES_REALS_AREEQUAL=UNDEFINED THEN
$LET QBCC_TYPES_REALS_AREEQUAL=DEFINED

$IF QBCC_TYPES_REALS=UNDEFINED THEN
$ERROR expected: 'Reals.bi'
$ENDIF

function Reals.areEqual%%(this##, value##)
	Reals.areEqual = (this## = value##)
end function

$ENDIF
