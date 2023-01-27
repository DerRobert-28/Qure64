$IF QB64CC_TYPES_STRING_PREPEND=UNDEFINED THEN
$LET QB64CC_TYPES_STRING_PREPEND=DEFINED

$IF QB64CC_TYPES_STRING=UNDEFINED THEN
$ERROR expected: 'String.bi'
$ENDIF

function String.prepend$(this$, value$)
	String.prepend = value$ + this$
end function

sub String.prepend(this$, value$)
	this$ = String.prepend(this$, value$)
end function

$ENDIF
