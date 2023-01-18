$IF QBCC_TYPES_BOOLEAN_ISUNDEFINED=UNDEFINED THEN
$LET QBCC_TYPES_BOOLEAN_ISUNDEFINED=DEFINED

$IF QBCC_TYPES_BOOLEAN=UNDEFINED THEN
$ERROR expected: 'Boolean.bi'
$ENDIF

function Boolean.isUndefined%%(this as Boolean)
	Boolean.isUndefined = (this.isFalse = 0) and (this.isTrue = 0)
end function

$ENDIF
