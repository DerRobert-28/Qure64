$IF QB64CC_LISTS_TLIST_FROM=UNDEFINED THEN
$LET QB64CC_LISTS_TLIST_FROM=DEFINED

$IF QB64CC_LISTS_TLIST=UNDEFINED THEN
$ERROR expected: 'TList.bi'
$ENDIF

function TList.from$(class%, array() as TList)
	dim each&, result as TList
	TList.clear result
	for each& = lbound(array) to ubound(array)
		TList.add class%, result, array(each&).value
	next
	TList.from = TList.toString(result)
end function

sub TList.from(class%, this as TList, array() as TList)
	this.value = TList.from(class%, array())
end sub

$ENDIF
