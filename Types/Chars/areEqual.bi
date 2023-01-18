$IF QBCC_TYPES_CHARS_AREEQUAL=UNDEFINED THEN
$LET QBCC_TYPES_CHARS_AREEQUAL=DEFINED

$IF QBCC_TYPES_CHARS=UNDEFINED THEN
$ERROR expected: 'Chars.bi'
$ENDIF

$IF QBCC_TYPES_CHAR=UNDEFINED THEN
$ERROR expected: 'Char.bi'
$ENDIF

function Chars.areEqual%%(this$, value$)
	Chars.areEqual = (Char.of(this$) = Char.of(value$))
end function

$ENDIF
