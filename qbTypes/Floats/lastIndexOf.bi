$IF QBTYPES_FLOATS_LASTINDEXOF=UNDEFINED THEN
$LET QBTYPES_FLOATS_LASTINDEXOF=DEFINED

$IF QBTYPES_FLOATS=UNDEFINED THEN
$ERROR expected: 'Floats.bi'
$ENDIF

function Floats.lastIndexOf&(this!(), value!)
	dim each&, result&
	result& = ubound(this!) + 1
	for each& = result& - 1 to lbound(this!) step -1
		if Floats.areEqual(this!(each&), value!) then
			result& = each&
			exit for
		endif
	next
	Floats.lastIndexOf = result&
end function

$ENDIF
