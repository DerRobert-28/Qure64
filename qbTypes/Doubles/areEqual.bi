$IF QBTYPES_DOUBLES_AREEQUAL=UNDEFINED THEN
$LET QBTYPES_DOUBLES_AREEQUAL=DEFINED

$IF QBTYPES_DOUBLES=UNDEFINED THEN
$ERROR expected: 'Doubles.bi'
$ENDIF

function Doubles.areEqual%%(this#, value#)
	Doubles.areEqual = (this# = value#)
end function

$ENDIF
