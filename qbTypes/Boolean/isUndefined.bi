$IF QBTYPES_BOOLEAN_ISUNDEFINED=UNDEFINED THEN
$LET QBTYPES_BOOLEAN_ISUNDEFINED=DEFINED

$IF QBTYPES_BOOLEAN=UNDEFINED THEN
$ERROR expected: 'Boolean.bi'
$ENDIF

function Boolean.isUndefined%%(this as Boolean)
	Boolean.isUndefined = (this.isFalse = 0) and (this.isTrue = 0)
end function

$ENDIF
