$IF QB64CC_TYPES_REALS=UNDEFINED THEN
$LET QB64CC_TYPES_REALS=DEFINED

function Reals.areEqual%%(this##, value##)
	Reals.areEqual = (this## = value##)
end function

function Reals.contain%%(this##(), value##)
	dim each&, result%%
	for each& = lbound(this##) to ubound(this##)
		result%% = Reals.areEqual(this##(each&), value##)
		if result%% then exit for
	next
	Reals.contain = result%%
end function

function Reals.indexOf&(this##(), value##)
	dim each&, result&
	result& = lbound(this##) - 1
	for each& = result& + 1 to ubound(this##)
		if Reals.areEqual(this##(each&), value##) then
			result& = each&
			exit for
		endif
	next
	Reals.indexOf = result&
end function

function Reals.lastIndexOf&(this##(), value##)
	dim each&, result&
	result& = ubound(this##) + 1
	for each& = result& - 1 to lbound(this##) step -1
		if Reals.areEqual(this##(each&), value##) then
			result& = each&
			exit for
		endif
	next
	Reals.lastIndexOf = result&
end function

$ENDIF
