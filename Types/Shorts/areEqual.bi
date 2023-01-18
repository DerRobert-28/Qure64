$IF QBCC_TYPES_SHORTS_AREEQUAL=UNDEFINED THEN
$LET QBCC_TYPES_SHORTS_AREEQUAL=DEFINED

$IF QBCC_TYPES_SHORTS=UNDEFINED THEN
$ERROR expected: 'Shorts.bi'
$ENDIF

function Shorts.areEqual%%(this%, value%)
	Shorts.areEqual = (this% = value%)
end function

$ENDIF
