$IF QBTYPES_CHAR_NULL=UNDEFINED THEN
$LET QBTYPES_CHAR_NULL=DEFINED

$IF QBTYPES_CHAR=UNDEFINED THEN
$ERROR expected: 'Char.bi'
$ENDIF

function Char.NULL$()
	Char.NULL = Char.from(0)
end function

$ENDIF
