$IF QBTYPES_CHAR_TOSTRING=UNDEFINED THEN
$LET QBTYPES_CHAR_TOSTRING=DEFINED

$IF QBTYPES_CHAR=UNDEFINED THEN
$ERROR expected: 'Char.bi'
$ENDIF

function Char.toString$(this$1)
	dim result$
	result$ = chr$(32)
	mid$(result$, 1, 1) = this$1
	Char.toString = result$
end function

$ENDIF
