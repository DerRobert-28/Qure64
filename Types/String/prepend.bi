$IF QBCC_TYPES_STRING_PREPEND=UNDEFINED THEN
$LET QBCC_TYPES_STRING_PREPEND=DEFINED

$IF QBCC_TYPES_STRING=UNDEFINED THEN
$ERROR expected: 'String.bi'
$ENDIF

function String.prepend$(this$, value$)
	String.prepend = value$ + this$
end function

sub String.prepend(this$, value$)
	this$ = String.prepend(this$, value$)
end function

$ENDIF
