$IF QBTYPES_SHORT_VALUEOF=UNDEFINED THEN
$LET QBTYPES_SHORT_VALUEOF=DEFINED

$IF QBTYPES_SHORT=UNDEFINED THEN
$ERROR expected: 'Short.bi'
$ENDIF

function Short.valueOf%(this$)
	Short.valueOf = val(ltrim$(this$))
end function

$ENDIF
