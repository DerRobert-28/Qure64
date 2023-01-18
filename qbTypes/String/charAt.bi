$IF QBTYPES_STRING_CHARAT=UNDEFINED THEN
$LET QBTYPES_STRING_CHARAT=DEFINED

$IF QBTYPES_STRING=UNDEFINED THEN
$ERROR expected: 'String.bi'
$ENDIF

function String.charAt$(this$, index&)
	dim index0&, length&
	length& = len(this$)
	index0& = index&
	while index0& < 0
		index0& = index0& + length&
	wend
	index0& = index0& mod length&
	String.charAt = mid$(this$, index0& + 1, 1)
end function

$ENDIF
