$IF QBCC_TYPES_LONGS_INDEXOF=UNDEFINED THEN
$LET QBCC_TYPES_LONGS_INDEXOF=DEFINED

$IF QBCC_TYPES_LONGS=UNDEFINED THEN
$ERROR expected: 'Longs.bi'
$ENDIF

function Longs.indexOf&(this&(), value&)
	dim each&, result&
	result& = lbound(this&) - 1
	for each& = result& + 1 to ubound(this&)
		if Longs.areEqual(this&(each&), value&) then
			result& = each&
			exit for
		endif
	next
	Longs.indexOf = result&
end function

$ENDIF
