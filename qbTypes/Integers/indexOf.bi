$IF QBTYPES_INTEGERS_INDEXOF=UNDEFINED THEN
$LET QBTYPES_INTEGERS_INDEXOF=DEFINED

$IF QBTYPES_INTEGERS=UNDEFINED THEN
$ERROR expected: 'Integers.bi'
$ENDIF

function Integers.indexOf&(this&&(), value&&)
	dim each&, result&
	result& = lbound(this&&) - 1
	for each& = result& + 1 to ubound(this&&)
		if Integers.areEqual(this&&(each&), value&&) then
			result& = each&
			exit for
		endif
	next
	Integers.indexOf = result&
end function

$ENDIF
