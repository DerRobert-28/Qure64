$IF QBCC_LISTS_STRINGLIST_SORT=UNDEFINED THEN
$LET QBCC_LISTS_STRINGLIST_SORT=DEFINED

$IF QBCC_LISTS_STRINGLIST=UNDEFINED THEN
$ERROR expected: 'StringList.bi'
$ENDIF

function StringList.sort$(this as StringList)
	dim array$(0), i&, j&, l&, u&
	StringList.toArray this, array$()
	l& = lbound(array$)
	u& = ubound(array$)
	for i& = l& to u&
		for j& = i& + 1 to u&
			if array$(i&) > array$(j&) then
				swap array$(i&), array$(j&)
			endif
		next
	next
	StringList.sort = StringList.from(array$())
end function

sub StringList.sort(this as StringList)
	this.value = StringList.sort(this)
end sub

$ENDIF
