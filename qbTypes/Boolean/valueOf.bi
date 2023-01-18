$IF QBTYPES_BOOLEAN_VALUEOF=UNDEFINED THEN
$LET QBTYPES_BOOLEAN_VALUEOF=DEFINED

$IF QBTYPES_BOOLEAN=UNDEFINED THEN
$ERROR expected: 'Boolean.bi'
$ENDIF

function Boolean.valueOf%%(this$)
	Boolean.valueOf = (lcase$(ltrim$(rtrim$(this$))) = "true")
end function

$ENDIF
