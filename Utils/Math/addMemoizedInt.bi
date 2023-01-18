$IF QBCC_UTILS_MATH_ADDMEMOIZEDINT=UNDEFINED THEN
$LET QBCC_UTILS_MATH_ADDMEMOIZEDINT=DEFINED

$IF QBCC_UTILS_MATH=UNDEFINED THEN
$ERROR expected: 'Math.bi'
$ENDIF

function Math.addMemoizedInt$(this$, value&&)
	if Math.isMemoizedInt(this$, value&&) then
		Math.addMemoizedInt = this$
	else
		Math.addMemoizedInt = this$ + _mk$(_integer64, value&&)
	endif
end function

sub Math.addMemoizedInt(this$, value&&)
	this$ = Math.addMemoizedInt(this$, value&&)
end function

$ENDIF
