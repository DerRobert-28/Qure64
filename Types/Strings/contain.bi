$IF QB64CC_TYPES_STRINGS_CONTAIN=UNDEFINED THEN
$LET QB64CC_TYPES_STRINGS_CONTAIN=DEFINED

$IF QB64CC_TYPES_STRINGS=UNDEFINED THEN
$ERROR expected: 'Strings.bi'
$ENDIF

function Strings.contain%%(array$(), item$)
	dim each&, result%%
	for each& = lbound(array$) to ubound(array$)
		result%% = Strings.areEqual(array$(each&), item$)
		if result%% then exit for
	next
	Strings.contain = result%%
end function

$ENDIF
