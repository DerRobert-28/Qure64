$IF QB64CC_TYPES_CHARS=UNDEFINED THEN
$LET QB64CC_TYPES_CHARS=DEFINED

function Chars.areEqual%%(this$, value$)
	Chars.areEqual = (Char.of(this$) = Char.of(value$))
end function

function Chars.contain%%(this$(), value$)
	dim each&, result%%
	for each& = lbound(this$) to ubound(this$)
		result%% = Chars.areEqual(this$(each&), value$)
		if result%% then exit for
	next
	Chars.contain = result%%
end function

function Chars.indexOf&(this$(), value$)
	dim each&, result&
	result& = lbound(this$) - 1
	for each& = result& + 1 to ubound(this$)
		if Chars.areEqual(this$(each&), value$) then
			result& = each&
			exit for
		endif
	next
	Chars.indexOf = result&
end function

function Chars.lastIndexOf&(this$(), value$)
	dim each&, result&
	result& = ubound(this$) + 1
	for each& = result& - 1 to lbound(this$) step -1
		if Chars.areEqual(this$(each&), value$) then
			result& = each&
			exit for
		endif
	next
	Chars.lastIndexOf = result&
end function

$ENDIF
