$IF QB64CC_UTILS_MATH_ISMEMOIZEDINT=UNDEFINED THEN
$LET QB64CC_UTILS_MATH_ISMEMOIZEDINT=DEFINED

$IF QB64CC_UTILS_MATH=UNDEFINED THEN
$ERROR expected: 'Math.bi'
$ENDIF

function Math.isMemoizedInt%%(this$, value&&)
	dim index&, toString$
	if len(this$) = 0 then
		Math.isMemoizedInt = FALSE
	else
		toString$ = _mk$(_integer64, value&&)
		index& = instr(1, this$, toString$)
		Math.isMemoizedInt = (index& mod len(toString$)) = 1
	endif
end function

$ENDIF
