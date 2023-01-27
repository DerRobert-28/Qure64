$IF QB64CC_LISTS_STRINGLIST_ISEMPTY=UNDEFINED THEN
$LET QB64CC_LISTS_STRINGLIST_ISEMPTY=DEFINED

$IF QB64CC_LISTS_STRINGLIST=UNDEFINED THEN
$ERROR expected: 'StringList.bi'
$ENDIF

function StringList.isEmpty%%(this as StringList)
	StringList.isEmpty = (len(this.value) = 0)
end sub

$ENDIF
