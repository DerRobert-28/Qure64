$IF QBCC_TYPES_STRING_APPEND=UNDEFINED THEN
$LET QBCC_TYPES_STRING_APPEND=DEFINED

$IF QBCC_TYPES_STRING=UNDEFINED THEN
$ERROR expected: 'String.bi'
$ENDIF

function String.append$(this$, value$)
	String.append = this$ + value$
end function

sub String.append(this$, value$)
	this$ = String.append(this$, value$)
end function

$ENDIF
