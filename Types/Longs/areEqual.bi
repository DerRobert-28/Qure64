$IF QBTYPES_LONGS_AREEQUAL=UNDEFINED THEN
$LET QBTYPES_LONGS_AREEQUAL=DEFINED

$IF QBTYPES_LONGS=UNDEFINED THEN
$ERROR expected: 'Longs.bi'
$ENDIF

function Longs.areEqual%%(this&, value&)
	Longs.areEqual = (this& = value&)
end function

$ENDIF
