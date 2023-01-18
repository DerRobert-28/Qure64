$IF QBCC_LISTS_LONGLIST_GETHEAD=UNDEFINED THEN
$LET QBCC_LISTS_LONGLIST_GETHEAD=DEFINED

$IF QBCC_LISTS_LONGLIST=UNDEFINED THEN
$ERROR expected: 'LongList.bi'
$ENDIF

function LongList.getHead&(this as LongList)
	LongList.getHead = cvl(TList.getHead(LongList.class, this.value))
end function

$ENDIF
