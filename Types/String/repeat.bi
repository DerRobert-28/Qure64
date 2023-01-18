$IF QBCC_TYPES_STRING_REPEAT=UNDEFINED THEN
$LET QBCC_TYPES_STRING_REPEAT=DEFINED

$IF QBCC_TYPES_STRING=UNDEFINED THEN
$ERROR expected: 'String.bi'
$ENDIF

function String.repeat$(this$, count&)
	dim each&, result$
	result$ = ""
	for each& = 1 to count&
		result$ = result$ + this$
	next
	String.repeat = result$
end function

$ENDIF
