$IF QBTYPES_BOOLEAN_ISTRUE=UNDEFINED THEN
$LET QBTYPES_BOOLEAN_ISTRUE=DEFINED

$IF QBTYPES_BOOLEAN=UNDEFINED THEN
$ERROR expected: 'Boolean.bi'
$ENDIF

function Boolean.isTrue%%(this as Boolean)
	Boolean.isTrue = Boolean.isDefined(this) and this.isTrue
end function

$ENDIF
