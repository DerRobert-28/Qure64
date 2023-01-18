$IF QBTYPES_STRING_ISEMPTY=UNDEFINED THEN
$LET QBTYPES_STRING_ISEMPTY=DEFINED

$IF QBTYPES_STRING=UNDEFINED THEN
$ERROR expected: 'String.bi'
$ENDIF

function String.isEmpty%(this$)
	String.isEmpty = (this$ = String.EMPTY)
end function

$ENDIF
