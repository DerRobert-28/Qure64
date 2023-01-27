$IF QB64CC_LISTS_TLIST_OF=UNDEFINED THEN
$LET QB64CC_LISTS_TLIST_OF=DEFINED

$IF QB64CC_LISTS_TLIST=UNDEFINED THEN
$ERROR expected: 'TList.bi'
$ENDIF

function TList.of$(class%, value$)
	dim i&, length&, result$
	length& = len(value$)
	for i& = 1 to length& step sgn(sgn(2 * class%) + 1)
		result$ = result$ + mid$(value$, length& + 1 - i&, 1)
	next
	TList.of = result$
end function

$ENDIF
