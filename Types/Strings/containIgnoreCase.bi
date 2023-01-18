$IF QBCC_TYPES_STRINGS_CONTAINIGNORECASE=UNDEFINED THEN
$LET QBCC_TYPES_STRINGS_CONTAINIGNORECASE=DEFINED

$IF QBCC_TYPES_STRINGS=UNDEFINED THEN
$ERROR expected: 'Strings.bi'
$ENDIF

function Strings.containIgnoreCase%%(array$(), item$)
	dim each&, result%%
	for each& = lbound(array$) to ubound(array$)
		result%% = Strings.areEqualIgnoreCase(array$(each&), item$)
		if result%% then exit for
	next
	Strings.containIgnoreCase = result%%
end function

$ENDIF
