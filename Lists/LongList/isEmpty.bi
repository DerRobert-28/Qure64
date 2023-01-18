$IF QBCC_LISTS_LONGLIST_ISEMPTY=UNDEFINED THEN
$LET QBCC_LISTS_LONGLIST_ISEMPTY=DEFINED

$IF QBCC_LISTS_LONGLIST=UNDEFINED THEN
$ERROR expected: 'LongList.bi'
$ENDIF

function LongList.isEmpty%%(this as LongList)
	LongList.isEmpty = TList.isEmpty(this.value)
end sub

$ENDIF
