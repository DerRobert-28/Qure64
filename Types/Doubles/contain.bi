$IF QB64CC_TYPES_DOUBLES_CONTAIN=UNDEFINED THEN
$LET QB64CC_TYPES_DOUBLES_CONTAIN=DEFINED

$IF QB64CC_TYPES_DOUBLES=UNDEFINED THEN
$ERROR expected: 'Doubles.bi'
$ENDIF

function Doubles.contain%%(this#(), value#)
	dim each&, result%%
	for each& = lbound(this#) to ubound(this#)
		result%% = Doubles.areEqual(this#(each&), value#)
		if result%% then exit for
	next
	Doubles.contain = result%%
end function

$ENDIF
