$IF QBTYPES_STRING_REPLACE=UNDEFINED THEN
$LET QBTYPES_STRING_REPLACE=DEFINED

$IF QBTYPES_STRING=UNDEFINED THEN
$ERROR expected: 'String.bi'
$ENDIF

function String.replace$(this$, index&, value$)
	dim index0&, length&, result$
	result$ = this$
	index0& = index&
	length& = String.length(this$)
	while index0& < 0
		index0& = index0& + length&
	wend
	index0& = index0& mod length&
	mid$(result$, index0& + 1, len(value$)) = value$
	String.replace = result$
end function

sub String.replace(this$, index&, value$)
	this$ = String.replace(this$, index&, value$)
end sub

$ENDIF
