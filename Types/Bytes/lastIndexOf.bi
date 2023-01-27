$IF QB64CC_TYPES_BYTES_LASTINDEXOF=UNDEFINED THEN
$LET QB64CC_TYPES_BYTES_LASTINDEXOF=DEFINED

$IF QB64CC_TYPES_BYTES=UNDEFINED THEN
$ERROR expected: 'Bytes.bi'
$ENDIF

function Bytes.lastIndexOf&(this%%(), value%%)
	dim each&, result&
	result& = ubound(this%%) + 1
	for each& = result& - 1 to lbound(this%%) step -1
		if Bytes.areEqual(this%%(each&), value%%) then
			result& = each&
			exit for
		endif
	next
	Bytes.lastIndexOf = result&
end function

$ENDIF
