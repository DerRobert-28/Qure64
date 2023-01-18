$IF QBCC_TYPES_REALS_LASTINDEXOF=UNDEFINED THEN
$LET QBCC_TYPES_REALS_LASTINDEXOF=DEFINED

$IF QBCC_TYPES_REALS=UNDEFINED THEN
$ERROR expected: 'Reals.bi'
$ENDIF

function Reals.lastIndexOf&(this##(), value##)
	dim each&, result&
	result& = ubound(this##) + 1
	for each& = result& - 1 to lbound(this##) step -1
		if Reals.areEqual(this##(each&), value##) then
			result& = each&
			exit for
		endif
	next
	Reals.lastIndexOf = result&
end function

$ENDIF
