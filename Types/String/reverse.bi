$IF QB64CC_TYPES_STRING_REVERSE=UNDEFINED THEN
$LET QB64CC_TYPES_STRING_REVERSE=DEFINED

$IF QB64CC_TYPES_STRING=UNDEFINED THEN
$ERROR expected: 'String.bi'
$ENDIF

function String.reverse$(this$)
	dim result$, index&, length&
	result$ = ""
	length& = String.length(this$)
	for index& = 0 to length& - 1
		result$ = result$ + mid$(this$, length& - index&, 1)
	next
	String.reverse = result$
end function

sub String.reverse(this$)
	this$ = String.reverse(this$)
end sub

$ENDIF
