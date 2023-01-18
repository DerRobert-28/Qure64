$IF QBLISTS_LONGLIST_SORT=UNDEFINED THEN
$LET QBLISTS_LONGLIST_SORT=DEFINED

$IF QBLISTS_LONGLIST=UNDEFINED THEN
$ERROR expected: 'LongList.bi'
$ENDIF

function LongList.sort$(this as LongList)
	LongList.sort = TList.sort(LongList.class, this.value)
end function

sub LongList.sort(this as LongList)
	TList.sort LongList.class, this.value
end sub

$ENDIF
