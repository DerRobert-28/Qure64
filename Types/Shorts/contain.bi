$IF QBTYPES_SHORTS_CONTAIN=UNDEFINED THEN
$LET QBTYPES_SHORTS_CONTAIN=DEFINED

$IF QBTYPES_SHORTS=UNDEFINED THEN
$ERROR expected: 'Shorts.bi'
$ENDIF

function Shorts.contain%%(this%(), value%)
	dim each&, result%%
	for each& = lbound(this%) to ubound(this%)
		result%% = Shorts.areEqual(this%(each&), value%)
		if result%% then exit for
	next
	Shorts.contain = result%%
end function

$ENDIF
