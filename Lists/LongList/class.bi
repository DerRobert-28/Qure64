$IF QBLISTS_LONGLIST_CLASS=UNDEFINED THEN
$LET QBLISTS_LONGLIST_CLASS=DEFINED

$IF QBLISTS_LONGLIST=UNDEFINED THEN
$ERROR expected: 'LongList.bi'
$ENDIF

function LongList.class%()
	dim this&
	LongList.class = len(this&)
end function

$ENDIF
