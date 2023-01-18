$IF QBTYPES_BYTES_INDEXOF=UNDEFINED THEN
$LET QBTYPES_BYTES_INDEXOF=DEFINED

$IF QBTYPES_BYTES=UNDEFINED THEN
$ERROR expected: 'Bytes.bi'
$ENDIF

function Bytes.indexOf&(this%%(), value%%)
	dim each&, result&
	result& = lbound(this%%) - 1
	for each& = result& + 1 to ubound(this%%)
		if Bytes.areEqual(this%%(each&), value%%) then
			result& = each&
			exit for
		endif
	next
	Bytes.indexOf = result&
end function

$ENDIF
