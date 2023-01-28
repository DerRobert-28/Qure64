$IF QB64CC_LISTS_LONGLIST_CLASS=UNDEFINED THEN
$LET QB64CC_LISTS_LONGLIST_CLASS=DEFINED

$IF QB64CC_LISTS_LONGLIST=UNDEFINED THEN
$ERROR expected: 'LongList.bi'
$ENDIF

function LongList.class%()
	dim this&
	LongList.class = len(this&)
end function

$ENDIF
