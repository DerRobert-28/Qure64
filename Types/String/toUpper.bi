$IF QB64CC_TYPES_STRING_TOUPPER=UNDEFINED THEN
$LET QB64CC_TYPES_STRING_TOUPPER=DEFINED

$IF QB64CC_TYPES_STRING=UNDEFINED THEN
$ERROR expected: 'String.bi'
$ENDIF

function String.toUpper$(this$)
 	String.toUpper = ucase$(this$)
end function

sub String.toUpper(this$)
	this$ = String.toUpper(this$)
end sub

$ENDIF
