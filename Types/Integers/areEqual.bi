$IF QBCC_TYPES_INTEGERS_AREEQUAL=UNDEFINED THEN
$LET QBCC_TYPES_INTEGERS_AREEQUAL=DEFINED

$IF QBCC_TYPES_INTEGERS=UNDEFINED THEN
$ERROR expected: 'Integers.bi'
$ENDIF

function Integers.areEqual%%(first&&, second&&)
	Integers.areEqual = (first&& = second&&)
end function

$ENDIF
