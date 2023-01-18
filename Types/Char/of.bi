$IF QBTYPES_CHAR_OF=UNDEFINED THEN
$LET QBTYPES_CHAR_OF=DEFINED

$IF QBTYPES_CHAR=UNDEFINED THEN
$ERROR expected: 'Char.bi'
$ENDIF

function Char.of$(this$)
	Char.of = Char.from(Char.valueOf(this$))
end function

$ENDIF
