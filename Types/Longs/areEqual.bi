$IF QB64CC_TYPES_LONGS_AREEQUAL=UNDEFINED THEN
$LET QB64CC_TYPES_LONGS_AREEQUAL=DEFINED

$IF QB64CC_TYPES_LONGS=UNDEFINED THEN
$ERROR expected: 'Longs.bi'
$ENDIF

function Longs.areEqual%%(this&, value&)
	Longs.areEqual = (this& = value&)
end function

$ENDIF
