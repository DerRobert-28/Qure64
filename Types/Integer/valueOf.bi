$IF QBCC_TYPES_INTEGER_VALUEOF=UNDEFINED THEN
$LET QBCC_TYPES_INTEGER_VALUEOF=DEFINED

$IF QBCC_TYPES_INTEGER=UNDEFINED THEN
$ERROR expected: 'Integer.bi'
$ENDIF

function Integer.valueOf&&(this$)
	Integer.valueOf = val(ltrim$(this$))
end function

$ENDIF
