$IF QBTYPES_STRING_QUOTE=UNDEFINED THEN
$LET QBTYPES_STRING_QUOTE=DEFINED

$IF QBTYPES_STRING=UNDEFINED THEN
$ERROR expected: 'String.bi'
$ENDIF

function String.quote$(this$)
	dim result$
	result$ = this$
	if String.firstOf(result$) <> chr$(34) then String.prepend result$, chr$(34)
	if String.lastOf(result$) <> chr$(34) then String.append result$, chr$(34)
	String.quote = result$
end function

sub String.quote(this$)
	this$ = String.quote(this$)
end sub

$ENDIF
