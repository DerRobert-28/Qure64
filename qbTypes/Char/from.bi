$IF QBTYPES_CHAR_FROM=UNDEFINED THEN
$LET QBTYPES_CHAR_FROM=DEFINED

$IF QBTYPES_CHAR=UNDEFINED THEN
$ERROR expected: 'Char.bi'
$ENDIF

function Char.from$(value%)
	Char.from = chr$(value% and 255)
end function

$ENDIF
