$IF QBTYPES_CHARS_AREEQUAL=UNDEFINED THEN
$LET QBTYPES_CHARS_AREEQUAL=DEFINED

$IF QBTYPES_CHARS=UNDEFINED THEN
$ERROR expected: 'Chars.bi'
$ENDIF

$IF QBTYPES_CHAR=UNDEFINED THEN
$ERROR expected: 'Char.bi'
$ENDIF

function Chars.areEqual%%(this$, value$)
	Chars.areEqual = (Char.of(this$) = Char.of(value$))
end function

$ENDIF
