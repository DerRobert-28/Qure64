$IF QBTYPES_FLOATS_AREEQUAL=UNDEFINED THEN
$LET QBTYPES_FLOATS_AREEQUAL=DEFINED

$IF QBTYPES_FLOATS=UNDEFINED THEN
$ERROR expected: 'Floats.bi'
$ENDIF

function Floats.areEqual%%(this!, value!)
	Floats.areEqual = (this! = value!)
end function

$ENDIF
