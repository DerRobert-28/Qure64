$IF QBTYPES_BOOLEAN_ISDEFINED=UNDEFINED THEN
$LET QBTYPES_BOOLEAN_ISDEFINED=DEFINED

$IF QBTYPES_BOOLEAN=UNDEFINED THEN
$ERROR expected: 'Boolean.bi'
$ENDIF

function Boolean.isDefined%%(this as Boolean)
	Boolean.isDefined = not Boolean.isUndefined(this)
end function

$ENDIF
