$IF QBTYPES_STRING_SUBSTRING=UNDEFINED THEN
$LET QBTYPES_STRING_SUBSTRING=DEFINED

$IF QBTYPES_STRING=UNDEFINED THEN
$ERROR expected: 'String.bi'
$ENDIF

function String.subStr$(this$, index&, length&)
	dim index0&, length0&, length1&
	length0& = String.length(this$)
	index0& = index&
	while index0& < 0
		index0& = index0& + length0&
	wend
	index0& = index0& mod length0&
	length1& = length&
	if length1& < 0 then length1& = 0
	if length1& > length& then length1& = length&
	String.subStr = mid$(this$, index0& + 1, length1&)
end function

function String.subString$(this$, index&)
	dim index0&, length&
	index0& = index&
	length& = len(this$)
	while index0& < 0
		index0& = index0& + length&
	wend
	index0& = index0& mod length&
	String.subString = mid$(this$, index0& + 1)
end function

$ENDIF
