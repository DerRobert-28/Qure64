$IF QB64CC_LISTS_STRINGLIST_SIZE=UNDEFINED THEN
$LET QB64CC_LISTS_STRINGLIST_SIZE=DEFINED

$IF QB64CC_LISTS_STRINGLIST=UNDEFINED THEN
$ERROR expected: 'StringList.bi'
$ENDIF

function StringList.sizeOf&(this as StringList)
	dim array$(0)
	StringList.toArray this, array$()
	StringList.sizeOf = ubound(array$) - lbound(array$) + 1
end function

$ENDIF
