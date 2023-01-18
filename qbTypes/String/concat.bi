$IF QBTYPES_STRING_CONCAT=UNDEFINED THEN
$LET QBTYPES_STRING_CONCAT=DEFINED

$IF QBTYPES_STRING=UNDEFINED THEN
$ERROR expected: 'String.bi'
$ENDIF

function String.concat$(this$, value$)
	String.concat = this$ + value$
end function

function String.concat2$(this$, first$, second$)
	String.concat2 = String.concat(String.concat(this$, first$), second$)
end function

function String.concat3$(this$, first$, second$, third$)
	String.concat3 = String.concat(String.concat2(this$, first$, second$), third$)
end function

sub String.concat(this$ , value$)
	this$ = String.concat(this$, value$)
end sub

$ENDIF
