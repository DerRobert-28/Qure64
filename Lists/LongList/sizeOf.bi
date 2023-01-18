$IF QBCC_LISTS_LONGLIST_SIZE=UNDEFINED THEN
$LET QBCC_LISTS_LONGLIST_SIZE=DEFINED

$IF QBCC_LISTS_LONGLIST=UNDEFINED THEN
$ERROR expected: 'LongList.bi'
$ENDIF

function LongList.sizeOf&(this as LongList)
	LongList.sizeOf = TList.sizeOf(LongList.class, this.value)
end function

$ENDIF
