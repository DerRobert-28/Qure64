$IF QB64CC_TYPES_FLOATS_AREEQUAL=UNDEFINED THEN
$LET QB64CC_TYPES_FLOATS_AREEQUAL=DEFINED

$IF QB64CC_TYPES_FLOATS=UNDEFINED THEN
$ERROR expected: 'Floats.bi'
$ENDIF

function Floats.areEqual%%(this!, value!)
	Floats.areEqual = (this! = value!)
end function

$ENDIF
