$IF QBCC_TYPES_STRING_LASTINDEXOF=UNDEFINED THEN
$LET QBCC_TYPES_STRING_LASTINDEXOF=DEFINED

$IF QBCC_TYPES_STRING=UNDEFINED THEN
$ERROR expected: 'String.bi'
$ENDIF

function String.lastIndexOf&(this$, value$)
	String.lastIndexOf = _instrrev(this$, value$) - 1
end function

$ENDIF
