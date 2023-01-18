$IF QBLISTS_STRINGLIST_ISEMPTY=UNDEFINED THEN
$LET QBLISTS_STRINGLIST_ISEMPTY=DEFINED

$IF QBLISTS_STRINGLIST=UNDEFINED THEN
$ERROR expected: 'StringList.bi'
$ENDIF

function StringList.isEmpty%%(this as StringList)
	StringList.isEmpty = (len(this.value) = 0)
end sub

$ENDIF
