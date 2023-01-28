$IF QB64CC_TYPES_LONGS=UNDEFINED THEN
$LET QB64CC_TYPES_LONGS=DEFINED

function Longs.areEqual%%(this&, value&)
	Longs.areEqual = (this& = value&)
end function

function Longs.contain%%(this&(), value&)
	dim each&, result%%
	for each& = lbound(this&) to ubound(this&)
		result%% = Longs.areEqual(this&(each&), value&)
		if result%% then exit for
	next
	Longs.contain = result%%
end function

function Longs.indexOf&(this&(), value&)
	dim each&, result&
	result& = lbound(this&) - 1
	for each& = result& + 1 to ubound(this&)
		if Longs.areEqual(this&(each&), value&) then
			result& = each&
			exit for
		endif
	next
	Longs.indexOf = result&
end function

function Longs.lastIndexOf&(this&(), value&)
	dim each&, result&
	result& = ubound(this&) + 1
	for each& = result& - 1 to lbound(this&) step -1
		if Longs.areEqual(this&(each&), value&) then
			result& = each&
			exit for
		endif
	next
	Longs.lastIndexOf = result&
end function

$ENDIF
