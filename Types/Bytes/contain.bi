$IF QBCC_TYPES_BYTES_CONTAIN=UNDEFINED THEN
$LET QBCC_TYPES_BYTES_CONTAIN=DEFINED

$IF QBCC_TYPES_BYTES=UNDEFINED THEN
$ERROR expected: 'Bytes.bi'
$ENDIF

function Bytes.contain%%(this%%(), value%%)
	dim each&, result%%
	for each& = lbound(this%%) to ubound(this%%)
		result%% = Bytes.areEqual(this%%(each&), value%%)
		if result%% then exit for
	next
	Bytes.contain = result%%
end function

$ENDIF
