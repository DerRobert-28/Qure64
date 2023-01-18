$IF QBTYPES_REALS_INDEXOF=UNDEFINED THEN
$LET QBTYPES_REALS_INDEXOF=DEFINED

$IF QBTYPES_REALS=UNDEFINED THEN
$ERROR expected: 'Reals.bi'
$ENDIF

function Reals.indexOf&(this##(), value##)
	dim each&, result&
	result& = lbound(this##) - 1
	for each& = result& + 1 to ubound(this##)
		if Reals.areEqual(this##(each&), value##) then
			result& = each&
			exit for
		endif
	next
	Reals.indexOf = result&
end function

$ENDIF
