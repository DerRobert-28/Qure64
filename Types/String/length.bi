$IF QBCC_TYPES_STRING_LENGTH=UNDEFINED THEN
$LET QBCC_TYPES_STRING_LENGTH=DEFINED

$IF QBCC_TYPES_STRING=UNDEFINED THEN
$ERROR expected: 'String.bi'
$ENDIF

function String.length&(this$)
 	String.length = len(this$)
end function

$ENDIF
