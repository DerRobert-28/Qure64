$IF QB64CC_UTILS_MATH_ISMEMOIZED=UNDEFINED THEN
$LET QB64CC_UTILS_MATH_ISMEMOIZED=DEFINED

$IF QB64CC_UTILS_MATH=UNDEFINED THEN
$ERROR expected: 'Math.bi'
$ENDIF

function Math.isMemoized%%(this$, value##)
	dim index&, toString$
	if len(this$) = 0 then
		Math.isMemoized = FALSE
	else
		toString$ = _mk$(_float, value##)
		index& = instr(1, this$, toString$)
		Math.isMemoized = (index& mod len(toString$)) = 1
	endif
end function

$ENDIF
