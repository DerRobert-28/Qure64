$IF QBTYPES_INTEGER_VALUEOF=UNDEFINED THEN
$LET QBTYPES_INTEGER_VALUEOF=DEFINED

$IF QBTYPES_INTEGER=UNDEFINED THEN
$ERROR expected: 'Integer.bi'
$ENDIF

function Integer.valueOf&&(this$)
	Integer.valueOf = val(ltrim$(this$))
end function

$ENDIF
