$IF QB64CC_TYPES_FLOATS_CONTAIN=UNDEFINED THEN
$LET QB64CC_TYPES_FLOATS_CONTAIN=DEFINED

$IF QB64CC_TYPES_FLOATS=UNDEFINED THEN
$ERROR expected: 'Floats.bi'
$ENDIF

function Floats.contain%%(this!(), value!)
	dim each&, result%%
	for each& = lbound(this!) to ubound(this!)
		result%% = Floats.areEqual(this!(each&), value!)
		if result%% then exit for
	next
	Floats.contain = result%%
end function

$ENDIF
