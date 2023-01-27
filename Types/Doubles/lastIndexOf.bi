$IF QB64CC_TYPES_DOUBLES_LASTINDEXOF=UNDEFINED THEN
$LET QB64CC_TYPES_DOUBLES_LASTINDEXOF=DEFINED

$IF QB64CC_TYPES_DOUBLES=UNDEFINED THEN
$ERROR expected: 'Doubles.bi'
$ENDIF

function Doubles.lastIndexOf&(this#(), value#)
	dim each&, result&
	result& = ubound(this#) + 1
	for each& = result& - 1 to lbound(this#) step -1
		if Doubles.areEqual(this#(each&), value#) then
			result& = each&
			exit for
		endif
	next
	Doubles.lastIndexOf = result&
end function

$ENDIF
