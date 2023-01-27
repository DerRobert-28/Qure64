$IF QB64CC_TYPES_DOUBLES_AREEQUAL=UNDEFINED THEN
$LET QB64CC_TYPES_DOUBLES_AREEQUAL=DEFINED

$IF QB64CC_TYPES_DOUBLES=UNDEFINED THEN
$ERROR expected: 'Doubles.bi'
$ENDIF

function Doubles.areEqual%%(this#, value#)
	Doubles.areEqual = (this# = value#)
end function

$ENDIF
