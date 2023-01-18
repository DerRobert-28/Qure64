$IF QBCC_LISTS_TLIST_GET=UNDEFINED THEN
$LET QBCC_LISTS_TLIST_GET=DEFINED

$IF QBCC_LISTS_TLIST=UNDEFINED THEN
$ERROR expected: 'TList.bi'
$ENDIF

function TList.get$(class%, this as TList, index&)
	dim length&, toString$
	length& = TList.sizeOf(class%, this)
	if index& < 0 then
		throw TList.IndexOutOfBoundsException
	elseif index& >= length& then
		throw TList.IndexOutOfBoundsException
	else
		toString$ = TList.toString(this)
		TList.get = left$(mid$(toString$, (index& * class%) + 1, class%) + string$(class%, 0), class%)
	endif
end function

$ENDIF
