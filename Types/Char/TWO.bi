$IF QBCC_TYPES_CHAR_TWO=UNDEFINED THEN
$LET QBCC_TYPES_CHAR_TWO=DEFINED

$IF QBCC_TYPES_CHAR=UNDEFINED THEN
$ERROR expected: 'Char.bi'
$ENDIF

function Char.TWO$()
	Char.TWO = Char.from(50)
end function

$ENDIF
