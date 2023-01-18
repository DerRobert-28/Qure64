$IF QBTYPES_FLOAT_VALUEOF=UNDEFINED THEN
$LET QBTYPES_FLOAT_VALUEOF=DEFINED

$IF QBTYPES_FLOAT=UNDEFINED THEN
$ERROR expected: 'Float.bi'
$ENDIF

function Float.valueOf!(this$)
	Float.valueOf = val(ltrim$(this$))
end function

$ENDIF
