$IF QB64CC_LISTS_TLIST_ISEMPTY=UNDEFINED THEN
$LET QB64CC_LISTS_TLIST_ISEMPTY=DEFINED

$IF QB64CC_LISTS_TLIST=UNDEFINED THEN
$ERROR expected: 'TList.bi'
$ENDIF

function TList.isEmpty%%(this as TList)
	TList.isEmpty = (len(TList.toString(this)) = 0)
end sub

$ENDIF
