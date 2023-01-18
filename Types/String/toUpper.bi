$IF QBTYPES_STRING_TOUPPER=UNDEFINED THEN
$LET QBTYPES_STRING_TOUPPER=DEFINED

$IF QBTYPES_STRING=UNDEFINED THEN
$ERROR expected: 'String.bi'
$ENDIF

function String.toUpper$(this$)
 	String.toUpper = ucase$(this$)
end function

sub String.toUpper(this$)
	this$ = String.toUpper(this$)
end sub

$ENDIF
