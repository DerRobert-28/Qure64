$IF QBCC_TYPES_BOOLEAN_TOSTRING=UNDEFINED THEN
$LET QBCC_TYPES_BOOLEAN_TOSTRING=DEFINED

$IF QBCC_TYPES_BOOLEAN=UNDEFINED THEN
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
