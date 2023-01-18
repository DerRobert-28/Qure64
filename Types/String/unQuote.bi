$IF QBTYPES_STRING_UNQUOTE=UNDEFINED THEN
$LET QBTYPES_STRING_UNQUOTE=DEFINED

$IF QBTYPES_STRING=UNDEFINED THEN
$ERROR expected: 'String.bi'
$ENDIF

function String.unQuote$(this$)
	dim result$
	result$ = this$
	if String.firstOf(result$) = chr$(34) then result$ = String.subString(result$, 1)
	if String.lastOf(result$) = chr$(34) then result$ = String.first(result$, len(result$) - 1)
	String.unQuote = result$
end function

sub String.unQuote(this$)
	this$ = String.unQuote(this$)
end sub

$ENDIF
