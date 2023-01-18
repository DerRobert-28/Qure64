$IF QBCC_TYPES_STRINGS_INDEXOFIGNORECASE=UNDEFINED THEN
$LET QBCC_TYPES_STRINGS_INDEXOFIGNORECASE=DEFINED

$IF QBCC_TYPES_STRINGS=UNDEFINED THEN
$ERROR expected: 'Strings.bi'
$ENDIF

function Strings.indexOfIgnoreCase&(array$(), item$)
	dim each&, result&
	result& = lbound(array$) - 1
	for each& = result& + 1 to ubound(array$)
		if Strings.areEqualIgnoreCase(array$(each&), item$) then
			result& = each&
			exit for
		endif
	next
	Strings.indexOfIgnoreCase = result&
end function

$ENDIF
