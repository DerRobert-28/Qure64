$IF QB64CC_TYPES_FLOATS_INDEXOF=UNDEFINED THEN
$LET QB64CC_TYPES_FLOATS_INDEXOF=DEFINED

$IF QB64CC_TYPES_FLOATS=UNDEFINED THEN
$ERROR expected: 'Floats.bi'
$ENDIF

function Floats.indexOf&(this!(), value!)
	dim each&, result&
	result& = lbound(this!) - 1
	for each& = result& + 1 to ubound(this!)
		if Floats.areEqual(this!(each&), value!) then
			result& = each&
			exit for
		endif
	next
	Floats.indexOf = result&
end function

$ENDIF
