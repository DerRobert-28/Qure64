$IF QBCC_TYPES_CHAR_EIGHT=UNDEFINED THEN
$LET QBCC_TYPES_CHAR_EIGHT=DEFINED

$IF QBCC_TYPES_CHAR=UNDEFINED THEN
$ERROR expected: 'Char.bi'
$ENDIF

function Char.EIGHT$()
	Char.EIGHT = Char.from(56)
end function

$ENDIF
