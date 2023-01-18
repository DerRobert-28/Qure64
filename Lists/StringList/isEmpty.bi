$IF QBCC_LISTS_STRINGLIST_ISEMPTY=UNDEFINED THEN
$LET QBCC_LISTS_STRINGLIST_ISEMPTY=DEFINED

$IF QBCC_LISTS_STRINGLIST=UNDEFINED THEN
$ERROR expected: 'StringList.bi'
$ENDIF

function StringList.isEmpty%%(this as StringList)
	StringList.isEmpty = (len(this.value) = 0)
end sub

$ENDIF
