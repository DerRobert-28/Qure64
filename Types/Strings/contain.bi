$IF QBTYPES_STRINGS_CONTAIN=UNDEFINED THEN
$LET QBTYPES_STRINGS_CONTAIN=DEFINED

$IF QBTYPES_STRINGS=UNDEFINED THEN
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
