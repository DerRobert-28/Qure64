$IF QBCC_LISTS_LONGLIST_TOSTRING=UNDEFINED THEN
$LET QBCC_LISTS_LONGLIST_TOSTRING=DEFINED

$IF QBCC_LISTS_LONGLIST=UNDEFINED THEN
$ERROR expected: 'LongList.bi'
$ENDIF

function LongList.toString$(this as LongList)
	LongList.toString = TList.toString(this.value)
end function

$ENDIF
