$IF QBTYPES_INTEGERS_LASTINDEXOF=UNDEFINED THEN
$LET QBTYPES_INTEGERS_LASTINDEXOF=DEFINED

$IF QBTYPES_INTEGERS=UNDEFINED THEN
$ERROR expected: 'Integers.bi'
$ENDIF

function Integers.lastIndexOf&(this&&(), value&&)
	dim each&, result&
	result& = ubound(this&&) + 1
	for each& = result& - 1 to lbound(this&&) step -1
		if Integers.areEqual(this&&(each&), value&&) then
			result& = each&
			exit for
		endif
	next
	Integers.lastIndexOf = result&
end function

$ENDIF
