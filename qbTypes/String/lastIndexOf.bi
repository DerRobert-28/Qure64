$IF QBTYPES_STRING_LASTINDEXOF=UNDEFINED THEN
$LET QBTYPES_STRING_LASTINDEXOF=DEFINED

$IF QBTYPES_STRING=UNDEFINED THEN
$ERROR expected: 'String.bi'
$ENDIF

function String.lastIndexOf&(this$, value$)
	String.lastIndexOf = _instrrev(this$, value$) - 1
end function

$ENDIF
