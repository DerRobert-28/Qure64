$IF QBCC_TYPES_CHAR_VALUEOF=UNDEFINED THEN
$LET QBCC_TYPES_CHAR_VALUEOF=DEFINED

$IF QBCC_TYPES_CHAR=UNDEFINED THEN
$ERROR expected: 'Char.bi'
$ENDIF

function Char.valueOf%(this$)
	Char.valueOf = asc(this$ + Char.NULL)
end function

$ENDIF
