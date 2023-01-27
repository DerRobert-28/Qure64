$IF QB64CC_TYPES_BOOLEAN_ISFALSE=UNDEFINED THEN
$LET QB64CC_TYPES_BOOLEAN_ISFALSE=DEFINED

$IF QB64CC_TYPES_BOOLEAN=UNDEFINED THEN
$ERROR expected: 'Boolean.bi'
$ENDIF

function Boolean.isFalse%%(this as Boolean)
	Boolean.isFalse = Boolean.isDefined(this) and this.isFalse
end function

$ENDIF
