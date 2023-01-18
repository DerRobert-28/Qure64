$IF QBTYPES_CHAR_VALUEOF=UNDEFINED THEN
$LET QBTYPES_CHAR_VALUEOF=DEFINED

$IF QBTYPES_CHAR=UNDEFINED THEN
$ERROR expected: 'Char.bi'
$ENDIF

function Char.valueOf%(this$)
	Char.valueOf = asc(this$ + Char.NULL)
end function

$ENDIF
