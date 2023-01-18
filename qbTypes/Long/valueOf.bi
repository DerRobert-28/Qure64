$IF QBTYPES_LONG_VALUEOF=UNDEFINED THEN
$LET QBTYPES_LONG_VALUEOF=DEFINED

$IF QBTYPES_LONG=UNDEFINED THEN
$ERROR expected: 'Long.bi'
$ENDIF

function Long.valueOf&(this$)
	Long.valueOf = val(ltrim$(this$))
end function

$ENDIF
