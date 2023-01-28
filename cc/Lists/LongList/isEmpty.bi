$IF QB64CC_LISTS_LONGLIST_ISEMPTY=UNDEFINED THEN
$LET QB64CC_LISTS_LONGLIST_ISEMPTY=DEFINED

$IF QB64CC_LISTS_LONGLIST=UNDEFINED THEN
$ERROR expected: 'LongList.bi'
$ENDIF

function LongList.isEmpty%%(this as LongList)
	LongList.isEmpty = TList.isEmpty(this.value)
end sub

$ENDIF
