$IF QBCC_TYPES_DOUBLES_AREEQUAL=UNDEFINED THEN
$LET QBCC_TYPES_DOUBLES_AREEQUAL=DEFINED

$IF QBCC_TYPES_DOUBLES=UNDEFINED THEN
$ERROR expected: 'Doubles.bi'
$ENDIF

function Doubles.areEqual%%(this#, value#)
	Doubles.areEqual = (this# = value#)
end function

$ENDIF
