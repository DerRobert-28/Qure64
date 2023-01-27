$IF QB64CC_LISTS_TLIST_SIZE=UNDEFINED THEN
$LET QB64CC_LISTS_TLIST_SIZE=DEFINED

$IF QB64CC_LISTS_TLIST=UNDEFINED THEN
$ERROR expected: 'TList.bi'
$ENDIF

function TList.sizeOf&(class%, this as TList)
	dim toString$
	if TList.isEmpty(this) then
		TList.sizeOf = 0
	else
		toString$ = TList.toString(this)
		TList.sizeOf = ((len(toString$) - 1) \ class%) + 1
	endif
end function

$ENDIF
