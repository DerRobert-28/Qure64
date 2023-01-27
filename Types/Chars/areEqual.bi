$IF QB64CC_TYPES_CHARS_AREEQUAL=UNDEFINED THEN
$LET QB64CC_TYPES_CHARS_AREEQUAL=DEFINED

$IF QB64CC_TYPES_CHARS=UNDEFINED THEN
$ERROR expected: 'Chars.bi'
$ENDIF

$IF QB64CC_TYPES_CHAR=UNDEFINED THEN
$ERROR expected: 'Char.bi'
$ENDIF

function Chars.areEqual%%(this$, value$)
	Chars.areEqual = (Char.of(this$) = Char.of(value$))
end function

$ENDIF
