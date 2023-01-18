$IF QBTYPES_STRING_TOLOWER=UNDEFINED THEN
$LET QBTYPES_STRING_TOLOWER=DEFINED

$IF QBTYPES_STRING=UNDEFINED THEN
$ERROR expected: 'String.bi'
$ENDIF

function String.toLower$(this$)
	String.toLower = lcase$(this$)
end function

sub String.toLower(this$)
	this$ = String.toLower(this$)
end sub

$ENDIF
