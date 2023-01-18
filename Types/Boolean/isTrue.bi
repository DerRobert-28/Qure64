$IF QBCC_TYPES_BOOLEAN_ISTRUE=UNDEFINED THEN
$LET QBCC_TYPES_BOOLEAN_ISTRUE=DEFINED

$IF QBCC_TYPES_BOOLEAN=UNDEFINED THEN
$ERROR expected: 'Boolean.bi'
$ENDIF

function Boolean.isTrue%%(this as Boolean)
	Boolean.isTrue = Boolean.isDefined(this) and this.isTrue
end function

$ENDIF
