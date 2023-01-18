$IF QBTYPES_SHORTS_INDEXOF=UNDEFINED THEN
$LET QBTYPES_SHORTS_INDEXOF=DEFINED

$IF QBTYPES_SHORTS=UNDEFINED THEN
$ERROR expected: 'Shorts.bi'
$ENDIF

function Shorts.indexOf&(this%(), value%)
	dim each&, result&
	result& = lbound(this%) - 1
	for each& = result& + 1 to ubound(this%)
		if Shorts.areEqual(this%(each&), value%) then
			result& = each&
			exit for
		endif
	next
	Shorts.indexOf = result&
end function

$ENDIF
