$IF QB64CC_LISTS_STRINGLIST_GETHEAD=UNDEFINED THEN
$LET QB64CC_LISTS_STRINGLIST_GETHEAD=DEFINED

$IF QB64CC_LISTS_STRINGLIST=UNDEFINED THEN
$ERROR expected: 'StringList.bi'
$ENDIF

function StringList.getHead$(this as StringList)
	dim length&, toString$
	if StringList.isEmpty(this) then
		StringList.getHead = ""
	else
		toString$ = StringList.toString(this)
		length& = cvl(left$(toString$, 4))
		StringList.getHead = mid$(toString$, 5, length&)
	endif
end function

$ENDIF
