$IF QBLISTS_LONGLIST_ADDALL=UNDEFINED THEN
$LET QBLISTS_LONGLIST_ADDALL=DEFINED

$IF QBLISTS_LONGLIST=UNDEFINED THEN
$ERROR expected: 'LongList.bi'
$ENDIF

function LongList.addAll$(this as LongList, array&())
	dim generic(0) as TList
	LongList.toGeneric array&(), generic()
	LongList.addAll = TList.addAll(LongList.class, this.value, generic())
end function

sub LongList.addAll(this as LongList, array&())
	dim generic(0) as TList
	LongList.toGeneric array&(), generic()
	TList.addAll LongList.class, this.value, generic()
end sub

$ENDIF
