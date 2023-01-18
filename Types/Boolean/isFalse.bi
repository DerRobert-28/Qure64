$IF QBCC_TYPES_BOOLEAN_ISFALSE=UNDEFINED THEN
$LET QBCC_TYPES_BOOLEAN_ISFALSE=DEFINED

$IF QBCC_TYPES_BOOLEAN=UNDEFINED THEN
$ERROR expected: 'Boolean.bi'
$ENDIF

function Boolean.isFalse%%(this as Boolean)
	Boolean.isFalse = Boolean.isDefined(this) and this.isFalse
end function

$ENDIF
