$IF QB64CC_TYPES_INTEGERS=UNDEFINED THEN
$LET QB64CC_TYPES_INTEGERS=DEFINED

function Integers.areEqual%%(first&&, second&&)
	Integers.areEqual = (first&& = second&&)
end function

function Integers.contain%%(this&&(), value&&)
	dim each&, result%%
	for each& = lbound(this&&) to ubound(this&&)
		result%% = Integers.areEqual(this&&(each&), value&&)
		if result%% then exit for
	next
	Integers.contain = result%%
end function

function Integers.indexOf&(this&&(), value&&)
	dim each&, result&
	result& = lbound(this&&) - 1
	for each& = result& + 1 to ubound(this&&)
		if Integers.areEqual(this&&(each&), value&&) then
			result& = each&
			exit for
		endif
	next
	Integers.indexOf = result&
end function

function Integers.lastIndexOf&(this&&(), value&&)
	dim each&, result&
	result& = ubound(this&&) + 1
	for each& = result& - 1 to lbound(this&&) step -1
		if Integers.areEqual(this&&(each&), value&&) then
			result& = each&
			exit for
		endif
	next
	Integers.lastIndexOf = result&
end function

$ENDIF
