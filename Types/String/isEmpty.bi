$IF QBCC_TYPES_STRING_ISEMPTY=UNDEFINED THEN
$LET QBCC_TYPES_STRING_ISEMPTY=DEFINED

$IF QBCC_TYPES_STRING=UNDEFINED THEN
$ERROR expected: 'String.bi'
$ENDIF

function String.isEmpty%(this$)
	String.isEmpty = (this$ = String.EMPTY)
end function

$ENDIF
