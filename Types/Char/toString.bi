$IF QBCC_TYPES_CHAR_TOSTRING=UNDEFINED THEN
$LET QBCC_TYPES_CHAR_TOSTRING=DEFINED

$IF QBCC_TYPES_CHAR=UNDEFINED THEN
$ERROR expected: 'Char.bi'
$ENDIF

function Char.toString$(this$1)
	dim result$
	result$ = chr$(32)
	mid$(result$, 1, 1) = this$1
	Char.toString = result$
end function

$ENDIF
