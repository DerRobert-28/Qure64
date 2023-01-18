$IF QBLISTS_LONGLIST_GETTAIL=UNDEFINED THEN
$LET QBLISTS_LONGLIST_GETTAIL=DEFINED

$IF QBLISTS_LONGLIST=UNDEFINED THEN
$ERROR expected: 'LongList.bi'
$ENDIF

function LongList.getTail$(this as LongList)
	LongList.getTail = TList.getTail(LongList.class, this.value)
end function

sub LongList.getTail(target as LongList, source as LongList)
	TList.getTail LongList.class, target.value, source.value
end sub

$ENDIF
