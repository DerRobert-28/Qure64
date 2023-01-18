$IF QBTYPES_STRING_APPEND=UNDEFINED THEN
$LET QBTYPES_STRING_APPEND=DEFINED

$IF QBTYPES_STRING=UNDEFINED THEN
$ERROR expected: 'String.bi'
$ENDIF

function String.append$(this$, value$)
	String.append = this$ + value$
end function

sub String.append(this$, value$)
	this$ = String.append(this$, value$)
end function

$ENDIF
