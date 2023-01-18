$IF QBUTILS_MATH_ADDMEMOIZED=UNDEFINED THEN
$LET QBUTILS_MATH_ADDMEMOIZED=DEFINED

$IF QBUTILS_MATH=UNDEFINED THEN
$ERROR expected: 'Math.bi'
$ENDIF

function Math.addMemoized$(this$, value##)
	if Math.isCurried(this$, value##) then
		Math.addMemoized = this$
	else
		Math.addMemoized = this$ + _mk$(_float, value##)
	endif
end function

sub Math.addMemoized(this$, value##)
	this$ = Math.addMemoized(this$, value##)
end function

$ENDIF
