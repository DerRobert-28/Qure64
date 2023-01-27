$IF QB64CC_TYPES_STRING_TRIM=UNDEFINED THEN
$LET QB64CC_TYPES_STRING_TRIM=DEFINED

$IF QB64CC_TYPES_STRING=UNDEFINED THEN
$ERROR expected: 'String.bi'
$ENDIF

function String.trim$(this$)
	'String.trim = ltrim$(rtrim$(this$))
	String.trim = _trim$(this$)
end function

sub String.trim(this$)
	this$ = String.trim(this$)
end sub

$ENDIF
