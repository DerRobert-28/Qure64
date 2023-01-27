$IF QB64CC_TYPES_STRING_LENGTH=UNDEFINED THEN
$LET QB64CC_TYPES_STRING_LENGTH=DEFINED

$IF QB64CC_TYPES_STRING=UNDEFINED THEN
$ERROR expected: 'String.bi'
$ENDIF

function String.length&(this$)
 	String.length = len(this$)
end function

$ENDIF
