$IF QBCC_LISTS_TLIST_SORT=UNDEFINED THEN
$LET QBCC_LISTS_TLIST_SORT=DEFINED

$IF QBCC_LISTS_TLIST=UNDEFINED THEN
$ERROR expected: 'TList.bi'
$ENDIF

function TList.sort$(class%, this as TList)
	dim array(0) as TList, i&, j&, l&, u&
	TList.toArray class%, this, array()
	l& = lbound(array)
	u& = ubound(array)
	for i& = l& to u&
		for j& = i& + 1 to u&
			if TList.of(class%, array(i&).value) > TList.of(class%, array(j&).value) then
				swap array(i&).value, array(j&).value
			endif
		next
	next
	TList.sort = TList.from(class%, array())
end function

sub TList.sort(class%, this as TList)
	this.value = TList.sort(class%, this)
end sub

$ENDIF
