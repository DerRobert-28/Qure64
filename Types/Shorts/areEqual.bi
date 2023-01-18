$IF QBTYPES_SHORTS_AREEQUAL=UNDEFINED THEN
$LET QBTYPES_SHORTS_AREEQUAL=DEFINED

$IF QBTYPES_SHORTS=UNDEFINED THEN
$ERROR expected: 'Shorts.bi'
$ENDIF

function Shorts.areEqual%%(this%, value%)
	Shorts.areEqual = (this% = value%)
end function

$ENDIF
