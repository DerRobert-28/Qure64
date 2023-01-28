$IF QB64CC_TYPES_BYTES=UNDEFINED THEN
$LET QB64CC_TYPES_BYTES=DEFINED

function Bytes.areEqual%%(this%%, value%%)
	Bytes.areEqual = (this%% = value%%)
end function

function Bytes.contain%%(this%%(), value%%)
	dim each&, result%%
	for each& = lbound(this%%) to ubound(this%%)
		result%% = Bytes.areEqual(this%%(each&), value%%)
		if result%% then exit for
	next
	Bytes.contain = result%%
end function

function Bytes.indexOf&(this%%(), value%%)
	dim each&, result&
	result& = lbound(this%%) - 1
	for each& = result& + 1 to ubound(this%%)
		if Bytes.areEqual(this%%(each&), value%%) then
			result& = each&
			exit for
		endif
	next
	Bytes.indexOf = result&
end function

function Bytes.lastIndexOf&(this%%(), value%%)
	dim each&, result&
	result& = ubound(this%%) + 1
	for each& = result& - 1 to lbound(this%%) step -1
		if Bytes.areEqual(this%%(each&), value%%) then
			result& = each&
			exit for
		endif
	next
	Bytes.lastIndexOf = result&
end function

$ENDIF
