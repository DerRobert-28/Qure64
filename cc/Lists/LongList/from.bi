$IF QB64CC_LISTS_LONGLIST_FROM=UNDEFINED THEN
$LET QB64CC_LISTS_LONGLIST_FROM=DEFINED

$IF QB64CC_LISTS_LONGLIST=UNDEFINED THEN
$ERROR expected: 'LongList.bi'
$ENDIF

function LongList.from$(array&())
	dim generic(0) as TList
	LongList.toGeneric array&(), generic()
	LongList.from = TList.from(LongList.class, generic())
end function

sub LongList.from(this as LongList, array&())
	dim generic(0) as TList
	LongList.toGeneric array&(), generic()
	TList.from LongList.class, this.value, generic()
end sub

$ENDIF
