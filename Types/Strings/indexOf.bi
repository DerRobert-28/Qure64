$IF QB64CC_TYPES_STRINGS_INDEXOF=UNDEFINED THEN
$LET QB64CC_TYPES_STRINGS_INDEXOF=DEFINED

$IF QB64CC_TYPES_STRINGS=UNDEFINED THEN
$ERROR expected: 'Strings.bi'
$ENDIF

function Strings.indexOf&(array$(), item$)
	dim each&, result&
	result& = lbound(array$) - 1
	for each& = result& + 1 to ubound(array$)
		if Strings.areEqual(array$(each&), item$) then
			result& = each&
			exit for
		endif
	next
	Strings.indexOf = result&
end function

$ENDIF
