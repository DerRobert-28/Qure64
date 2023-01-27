$IF QB64CC_LISTS_LONGLIST_SORT=UNDEFINED THEN
$LET QB64CC_LISTS_LONGLIST_SORT=DEFINED

$IF QB64CC_LISTS_LONGLIST=UNDEFINED THEN
$ERROR expected: 'LongList.bi'
$ENDIF

function LongList.sort$(this as LongList)
	LongList.sort = TList.sort(LongList.class, this.value)
end function

sub LongList.sort(this as LongList)
	TList.sort LongList.class, this.value
end sub

$ENDIF
