$IF QB64CC_TYPES_SHORTS_LASTINDEXOF=UNDEFINED THEN
$LET QB64CC_TYPES_SHORTS_LASTINDEXOF=DEFINED

$IF QB64CC_TYPES_SHORTS=UNDEFINED THEN
$ERROR expected: 'Shorts.bi'
$ENDIF

function Shorts.lastIndexOf&(this%(), value%)
	dim each&, result&
	result& = ubound(this%) + 1
	for each& = result& - 1 to lbound(this%) step -1
		if Shorts.areEqual(this%(each&), value%) then
			result& = each&
			exit for
		endif
	next
	Shorts.lastIndexOf = result&
end function

$ENDIF
