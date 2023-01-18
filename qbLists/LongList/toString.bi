$IF QBLISTS_LONGLIST_TOSTRING=UNDEFINED THEN
$LET QBLISTS_LONGLIST_TOSTRING=DEFINED

$IF QBLISTS_LONGLIST=UNDEFINED THEN
$ERROR expected: 'LongList.bi'
$ENDIF

function LongList.toString$(this as LongList)
	LongList.toString = TList.toString(this.value)
end function

$ENDIF
