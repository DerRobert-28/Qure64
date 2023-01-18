$IF QBCC_TYPES_STRING_OF=UNDEFINED THEN
$LET QBCC_TYPES_STRING_OF=DEFINED

$IF QBCC_TYPES_STRING=UNDEFINED THEN
$ERROR expected: 'String.bi'
$ENDIF

function String.of$(this$)
	dim result$
	result$ = space$(len(this$))
	mid$(result$, 1, len(this$)) = this$
	String.of = result$
end function

$ENDIF
