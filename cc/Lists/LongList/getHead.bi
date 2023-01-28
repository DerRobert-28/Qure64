$IF QB64CC_LISTS_LONGLIST_GETHEAD=UNDEFINED THEN
$LET QB64CC_LISTS_LONGLIST_GETHEAD=DEFINED

$IF QB64CC_LISTS_LONGLIST=UNDEFINED THEN
$ERROR expected: 'LongList.bi'
$ENDIF

function LongList.getHead&(this as LongList)
	LongList.getHead = cvl(TList.getHead(LongList.class, this.value))
end function

$ENDIF
