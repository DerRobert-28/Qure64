$IF QB64CC_TYPES_STRING_TOLOWER=UNDEFINED THEN
$LET QB64CC_TYPES_STRING_TOLOWER=DEFINED

$IF QB64CC_TYPES_STRING=UNDEFINED THEN
$ERROR expected: 'String.bi'
$ENDIF

function String.toLower$(this$)
	String.toLower = lcase$(this$)
end function

sub String.toLower(this$)
	this$ = String.toLower(this$)
end sub

$ENDIF
