$IF QBLISTS_LONGLIST_GET=UNDEFINED THEN
$LET QBLISTS_LONGLIST_GET=DEFINED

$IF QBLISTS_LONGLIST=UNDEFINED THEN
$ERROR expected: 'LongList.bi'
$ENDIF

function LongList.get&(this as LongList, index&)
	LongList.get = cvl(TList.get(LongList.class, this.value, index&))
end function

$ENDIF
