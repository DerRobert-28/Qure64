$IF QBTYPES_STRINGS_LASTINDEXOFIGNORECASE=UNDEFINED THEN
$LET QBTYPES_STRINGS_LASTINDEXOFIGNORECASE=DEFINED

$IF QBTYPES_STRINGS=UNDEFINED THEN
$ERROR expected: 'Strings.bi'
$ENDIF

function Strings.lastIndexOfIgnoreCase&(array$(), item$)
	dim each&, result&
	result& = ubound(array$) + 1
	for each& = result& - 1 to lbound(array$) step -1
		if Strings.areEqualIgnoreCase(array$(each&), item$) then
			result& = each&
			exit for
		endif
	next
	Strings.lastIndexOfIgnoreCase = result&
end function

$ENDIF
