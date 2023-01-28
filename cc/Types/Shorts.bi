$IF QB64CC_TYPES_SHORTS=UNDEFINED THEN
$LET QB64CC_TYPES_SHORTS=DEFINED

function Shorts.areEqual%%(this%, value%)
	Shorts.areEqual = (this% = value%)
end function

function Shorts.contain%%(this%(), value%)
	dim each&, result%%
	for each& = lbound(this%) to ubound(this%)
		result%% = Shorts.areEqual(this%(each&), value%)
		if result%% then exit for
	next
	Shorts.contain = result%%
end function

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
