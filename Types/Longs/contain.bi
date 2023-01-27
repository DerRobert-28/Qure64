$IF QB64CC_TYPES_LONGS_CONTAIN=UNDEFINED THEN
$LET QB64CC_TYPES_LONGS_CONTAIN=DEFINED

$IF QB64CC_TYPES_LONGS=UNDEFINED THEN
$ERROR expected: 'Longs.bi'
$ENDIF

function Longs.contain%%(this&(), value&)
	dim each&, result%%
	for each& = lbound(this&) to ubound(this&)
		result%% = Longs.areEqual(this&(each&), value&)
		if result%% then exit for
	next
	Longs.contain = result%%
end function

$ENDIF
