$IF QB64CC_LISTS_LONGLIST_SIZE=UNDEFINED THEN
$LET QB64CC_LISTS_LONGLIST_SIZE=DEFINED

$IF QB64CC_LISTS_LONGLIST=UNDEFINED THEN
$ERROR expected: 'LongList.bi'
$ENDIF

function LongList.sizeOf&(this as LongList)
	LongList.sizeOf = TList.sizeOf(LongList.class, this.value)
end function

$ENDIF
