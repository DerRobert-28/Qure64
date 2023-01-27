$IF QB64CC_TYPES_CHAR_OF=UNDEFINED THEN
$LET QB64CC_TYPES_CHAR_OF=DEFINED

$IF QB64CC_TYPES_CHAR=UNDEFINED THEN
$ERROR expected: 'Char.bi'
$ENDIF

function Char.of$(this$)
	Char.of = Char.from(Char.valueOf(this$))
end function

$ENDIF
