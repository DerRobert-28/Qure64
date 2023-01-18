$IF QBTYPES_STRING_LENGTH=UNDEFINED THEN
$LET QBTYPES_STRING_LENGTH=DEFINED

$IF QBTYPES_STRING=UNDEFINED THEN
$ERROR expected: 'String.bi'
$ENDIF

function String.length&(this$)
 	String.length = len(this$)
end function

$ENDIF
