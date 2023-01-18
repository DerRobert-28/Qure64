$IF QBCC_TYPES_CHAR_FROM=UNDEFINED THEN
$LET QBCC_TYPES_CHAR_FROM=DEFINED

$IF QBCC_TYPES_CHAR=UNDEFINED THEN
$ERROR expected: 'Char.bi'
$ENDIF

function Char.from$(value%)
	Char.from = chr$(value% and 255)
end function

$ENDIF
