$IF QBTYPES_DOUBLES_INDEXOF=UNDEFINED THEN
$LET QBTYPES_DOUBLES_INDEXOF=DEFINED

$IF QBTYPES_DOUBLES=UNDEFINED THEN
$ERROR expected: 'Doubles.bi'
$ENDIF

function Doubles.indexOf&(this#(), value#)
	dim each&, result&
	result& = lbound(this#) - 1
	for each& = result& + 1 to ubound(this#)
		if Doubles.areEqual(this#(each&), value#) then
			result& = each&
			exit for
		endif
	next
	Doubles.indexOf = result&
end function

$ENDIF
