$IF QB64CC_LISTS_STRINGLIST_FROM=UNDEFINED THEN
$LET QB64CC_LISTS_STRINGLIST_FROM=DEFINED

$IF QB64CC_LISTS_STRINGLIST=UNDEFINED THEN
$ERROR expected: 'StringList.bi'
$ENDIF

function StringList.from$(array$())
	dim each&, result as StringList
	StringList.clear result
	for each& = lbound(array$) to ubound(array$)
		StringList.add result, array$(each&)
	next
	StringList.from = result.value
end function

sub StringList.from(this as StringList, array$())
	this.value = StringList.from(array$())
end sub

$ENDIF
