$IF QBCC_TYPES_REALS_CONTAIN=UNDEFINED THEN
$LET QBCC_TYPES_REALS_CONTAIN=DEFINED

$IF QBCC_TYPES_REALS=UNDEFINED THEN
$ERROR expected: 'Reals.bi'
$ENDIF

function Reals.contain%%(this##(), value##)
	dim each&, result%%
	for each& = lbound(this##) to ubound(this##)
		result%% = Reals.areEqual(this##(each&), value##)
		if result%% then exit for
	next
	Reals.contain = result%%
end function

$ENDIF
