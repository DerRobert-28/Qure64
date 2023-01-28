$IF QB64CC_TYPES_FLOATS=UNDEFINED THEN
$LET QB64CC_TYPES_FLOATS=DEFINED

function Floats.areEqual%%(this!, value!)
	Floats.areEqual = (this! = value!)
end function

function Floats.contain%%(this!(), value!)
	dim each&, result%%
	for each& = lbound(this!) to ubound(this!)
		result%% = Floats.areEqual(this!(each&), value!)
		if result%% then exit for
	next
	Floats.contain = result%%
end function

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
