$IF QBTYPES_BOOLEAN_TOSTRING=UNDEFINED THEN
$LET QBTYPES_BOOLEAN_TOSTRING=DEFINED

$IF QBTYPES_BOOLEAN=UNDEFINED THEN
$ERROR expected: 'Boolean.bi'
$ENDIF

function Boolean.toString$(this as Boolean)
	if this.isTrue then
		Boolean.toString = "true"
	elseif this.isFalse then
		Boolean.toString = "false"
	else
		Boolean.toString = "undefined"
	endif
end function

$ENDIF
