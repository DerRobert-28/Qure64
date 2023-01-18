$IF QBCC_LISTS_STRINGLIST_SORTIGNORECASE=UNDEFINED THEN
$LET QBCC_LISTS_STRINGLIST_SORTIGNORECASE=DEFINED

$IF QBCC_LISTS_STRINGLIST=UNDEFINED THEN
$ERROR expected: 'StringList.bi'
$ENDIF

function StringList.sortIgnoreCase$(this as StringList)
	dim array$(0), i&, j&, l&, u&
	StringList.toArray this, array$()
	l& = lbound(array$)
	u& = ubound(array$)
	for i& = l& to u&
		for j& = i& + 1 to u&
			if lcase$(array$(i&)) > lcase$(array$(j&)) then
				swap array$(i&), array$(j&)
			endif
		next
	next
	StringList.sortIgnoreCase = StringList.from(array$())
end function

sub StringList.sortIgnoreCase(this as StringList)
	this.value = StringList.sortIgnoreCase(this)
end sub

$ENDIF
