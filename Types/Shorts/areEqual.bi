$IF QB64CC_TYPES_SHORTS_AREEQUAL=UNDEFINED THEN
$LET QB64CC_TYPES_SHORTS_AREEQUAL=DEFINED

$IF QB64CC_TYPES_SHORTS=UNDEFINED THEN
$ERROR expected: 'Shorts.bi'
$ENDIF

function Shorts.areEqual%%(this%, value%)
	Shorts.areEqual = (this% = value%)
end function

$ENDIF
