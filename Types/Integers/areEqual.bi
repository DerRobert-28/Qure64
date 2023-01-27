$IF QB64CC_TYPES_INTEGERS_AREEQUAL=UNDEFINED THEN
$LET QB64CC_TYPES_INTEGERS_AREEQUAL=DEFINED

$IF QB64CC_TYPES_INTEGERS=UNDEFINED THEN
$ERROR expected: 'Integers.bi'
$ENDIF

function Integers.areEqual%%(first&&, second&&)
	Integers.areEqual = (first&& = second&&)
end function

$ENDIF
