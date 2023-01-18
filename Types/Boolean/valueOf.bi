$IF QBCC_TYPES_BOOLEAN_VALUEOF=UNDEFINED THEN
$LET QBCC_TYPES_BOOLEAN_VALUEOF=DEFINED

$IF QBCC_TYPES_BOOLEAN=UNDEFINED THEN
$ERROR expected: 'Boolean.bi'
$ENDIF

function Boolean.valueOf%%(this$)
	Boolean.valueOf = (lcase$(ltrim$(rtrim$(this$))) = "true")
end function

$ENDIF
