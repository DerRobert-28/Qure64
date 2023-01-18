$IF QBUTILS_MATH_ISMEMOIZEDINT=UNDEFINED THEN
$LET QBUTILS_MATH_ISMEMOIZEDINT=DEFINED

$IF QBUTILS_MATH=UNDEFINED THEN
$ERROR expected: 'Math.bi'
$ENDIF

function Math.isisMemoizedInt%%(this$, value&&)
	dim index&, toString$
	if len(this$) = 0 then
		Math.isisMemoizedInt = FALSE
	else
		toString$ = _mk$(_integer64, value&&)
		index& = instr(1, this$, toString$)
		Math.isisMemoizedInt = (index& mod len(toString$)) = 1
	endif
end function

$ENDIF
