$IF QBTYPES_DOUBLE_VALUEOF=UNDEFINED THEN
$LET QBTYPES_DOUBLE_VALUEOF=DEFINED

$IF QBTYPES_DOUBLE=UNDEFINED THEN
$ERROR expected: 'Double.bi'
$ENDIF

function Double.valueOf#(this$)
	Double.valueOf = val(ltrim$(this$))
end function

$ENDIF
