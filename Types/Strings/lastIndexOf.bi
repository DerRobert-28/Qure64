$IF QBCC_TYPES_STRINGS_LASTINDEXOF=UNDEFINED THEN
$LET QBCC_TYPES_STRINGS_LASTINDEXOF=DEFINED

$IF QBCC_TYPES_STRINGS=UNDEFINED THEN
$ERROR expected: 'Strings.bi'
$ENDIF

function Strings.lastIndexOf&(array() as string, item as string)
	dim as long each, result
	result = ubound(array) + 1
	for each = result - 1 to lbound(array) step -1
		if Strings.areEqual(array(each), item) then
			result = each
			exit for
		endif
	next
	Strings.lastIndexOf = result
end function

$ENDIF
