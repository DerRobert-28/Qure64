$IF QBCC_TYPES_BOOLEAN_ISDEFINED=UNDEFINED THEN
$LET QBCC_TYPES_BOOLEAN_ISDEFINED=DEFINED

$IF QBCC_TYPES_BOOLEAN=UNDEFINED THEN
$ERROR expected: 'Boolean.bi'
$ENDIF

function Boolean.isDefined%%(this as Boolean)
	Boolean.isDefined = not Boolean.isUndefined(this)
end function

$ENDIF
