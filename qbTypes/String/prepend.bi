$IF QBTYPES_STRING_PREPEND=UNDEFINED THEN
$LET QBTYPES_STRING_PREPEND=DEFINED

$IF QBTYPES_STRING=UNDEFINED THEN
$ERROR expected: 'String.bi'
$ENDIF

function String.prepend$(this$, value$)
	String.prepend = value$ + this$
end function

sub String.prepend(this$, value$)
	this$ = String.prepend(this$, value$)
end function

$ENDIF
