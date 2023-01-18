$IF QBCC_TYPES_LONGS_AREEQUAL=UNDEFINED THEN
$LET QBCC_TYPES_LONGS_AREEQUAL=DEFINED

$IF QBCC_TYPES_LONGS=UNDEFINED THEN
$ERROR expected: 'Longs.bi'
$ENDIF

function Longs.areEqual%%(this&, value&)
	Longs.areEqual = (this& = value&)
end function

$ENDIF
