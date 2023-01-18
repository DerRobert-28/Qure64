$IF QBCC_LISTS_LONGLIST_CLASS=UNDEFINED THEN
$LET QBCC_LISTS_LONGLIST_CLASS=DEFINED

$IF QBCC_LISTS_LONGLIST=UNDEFINED THEN
$ERROR expected: 'LongList.bi'
$ENDIF

function LongList.class%()
	dim this&
	LongList.class = len(this&)
end function

$ENDIF
