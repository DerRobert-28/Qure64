$IF QBCC_TYPES_CHAR_SIX=UNDEFINED THEN
$LET QBCC_TYPES_CHAR_SIX=DEFINED

$IF QBCC_TYPES_CHAR=UNDEFINED THEN
$ERROR expected: 'Char.bi'
$ENDIF

function Char.SIX$()
	Char.SIX = Char.from(54)
end function

$ENDIF
