$IF QBLISTS_LONGLIST_TOARRAY=UNDEFINED THEN
$LET QBLISTS_LONGLIST_TOARRAY=DEFINED

$IF QBLISTS_LONGLIST=UNDEFINED THEN
$ERROR expected: 'LongList.bi'
$ENDIF

function LongList.toArray%%(this as LongList, array&())
	dim generic(0) as TList
	if TList.toArray(LongList.class, this.value, generic()) then
		LongList.fromGeneric generic(), array&()
		LongList.toArray = TRUE
	else
		LongList.toArray = FALSE
	endif
end sub

sub LongList.toArray(this as LongList, array&())
	dim generic(0) as TList
	TList.toArray LongList.class, this.value, generic()
	LongList.fromGeneric generic(), array&()
end sub


$ENDIF
