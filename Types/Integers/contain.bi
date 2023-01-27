$IF QB64CC_TYPES_INTEGERS_CONTAIN=UNDEFINED THEN
$LET QB64CC_TYPES_INTEGERS_CONTAIN=DEFINED

$IF QB64CC_TYPES_INTEGERS=UNDEFINED THEN
$ERROR expected: 'Integers.bi'
$ENDIF

function Integers.contain%%(this&&(), value&&)
	dim each&, result%%
	for each& = lbound(this&&) to ubound(this&&)
		result%% = Integers.areEqual(this&&(each&), value&&)
		if result%% then exit for
	next
	Integers.contain = result%%
end function

$ENDIF
