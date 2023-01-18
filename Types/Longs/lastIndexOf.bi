$IF QBTYPES_LONGS_LASTINDEXOF=UNDEFINED THEN
$LET QBTYPES_LONGS_LASTINDEXOF=DEFINED

$IF QBTYPES_LONGS=UNDEFINED THEN
$ERROR expected: 'Longs.bi'
$ENDIF

function Longs.lastIndexOf&(this&(), value&)
	dim each&, result&
	result& = ubound(this&) + 1
	for each& = result& - 1 to lbound(this&) step -1
		if Longs.areEqual(this&(each&), value&) then
			result& = each&
			exit for
		endif
	next
	Longs.lastIndexOf = result&
end function

$ENDIF
