$IF QB64CC_TYPES_DOUBLES=UNDEFINED THEN
$LET QB64CC_TYPES_DOUBLES=DEFINED

function Doubles.areEqual%%(this#, value#)
	Doubles.areEqual = (this# = value#)
end function

function Doubles.contain%%(this#(), value#)
	dim each&, result%%
	for each& = lbound(this#) to ubound(this#)
		result%% = Doubles.areEqual(this#(each&), value#)
		if result%% then exit for
	next
	Doubles.contain = result%%
end function

function Doubles.indexOf&(this#(), value#)
	dim each&, result&
	result& = lbound(this#) - 1
	for each& = result& + 1 to ubound(this#)
		if Doubles.areEqual(this#(each&), value#) then
			result& = each&
			exit for
		endif
	next
	Doubles.indexOf = result&
end function

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
