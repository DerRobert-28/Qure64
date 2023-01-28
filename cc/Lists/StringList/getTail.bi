$IF QB64CC_LISTS_STRINGLIST_GETTAIL=UNDEFINED THEN
$LET QB64CC_LISTS_STRINGLIST_GETTAIL=DEFINED

$IF QB64CC_LISTS_STRINGLIST=UNDEFINED THEN
$ERROR expected: 'StringList.bi'
$ENDIF

function StringList.getTail$(this as StringList)
	dim head$
	if StringList.isEmpty(this) then
		StringList.getTail = ""
	else
		head$ = StringList.getHead(this)
		StringList.getTail = mid$(this.value, len(head$) + 5)		
	endif
end function

sub StringList.getTail(target as StringList, source as StringList)
	target.value = StringList.getTail(source)
end sub

$ENDIF
