$IF QBTYPES_INTEGERS_AREEQUAL=UNDEFINED THEN
$LET QBTYPES_INTEGERS_AREEQUAL=DEFINED

$IF QBTYPES_INTEGERS=UNDEFINED THEN
$ERROR expected: 'Integers.bi'
$ENDIF

function Integers.areEqual%%(first&&, second&&)
	Integers.areEqual = (first&& = second&&)
end function

$ENDIF
