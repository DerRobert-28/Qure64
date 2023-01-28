$IF QB64CC_TYPES_STRINGS=UNDEFINED THEN
$LET QB64CC_TYPES_STRINGS=DEFINED

function Strings.areEqual%%(first$, second$)
	Strings.areEqual = (first$ = second$)
end function

function Strings.areEqualIgnoreCase%%(first$, second$)
	Strings.areEqualIgnoreCase = (String.toLower(first$) = String.toLower(second$))
end function

function Strings.contain%%(array$(), item$)
	dim each&, result%%
	for each& = lbound(array$) to ubound(array$)
		result%% = Strings.areEqual(array$(each&), item$)
		if result%% then exit for
	next
	Strings.contain = result%%
end function

function Strings.containIgnoreCase%%(array$(), item$)
	dim each&, result%%
	for each& = lbound(array$) to ubound(array$)
		result%% = Strings.areEqualIgnoreCase(array$(each&), item$)
		if result%% then exit for
	next
	Strings.containIgnoreCase = result%%
end function

function Strings.indexOf&(array$(), item$)
	dim each&, result&
	result& = lbound(array$) - 1
	for each& = result& + 1 to ubound(array$)
		if Strings.areEqual(array$(each&), item$) then
			result& = each&
			exit for
		endif
	next
	Strings.indexOf = result&
end function

function Strings.indexOfIgnoreCase&(array$(), item$)
	dim each&, result&
	result& = lbound(array$) - 1
	for each& = result& + 1 to ubound(array$)
		if Strings.areEqualIgnoreCase(array$(each&), item$) then
			result& = each&
			exit for
		endif
	next
	Strings.indexOfIgnoreCase = result&
end function

function Strings.lastIndexOf&(array$() as string, item$)
	dim each&, result&
	result& = ubound(array$) + 1
	for each& = result& - 1 to lbound(array$) step -1
		if Strings.areEqual(array$(each&), item$) then
			result& = each&
			exit for
		endif
	next
	Strings.lastIndexOf = result&
end function

function Strings.lastIndexOfIgnoreCase&(array$(), item$)
	dim each&, result&
	result& = ubound(array$) + 1
	for each& = result& - 1 to lbound(array$) step -1
		if Strings.areEqualIgnoreCase(array$(each&), item$) then
			result& = each&
			exit for
		endif
	next
	Strings.lastIndexOfIgnoreCase = result&
end function

$ENDIF
