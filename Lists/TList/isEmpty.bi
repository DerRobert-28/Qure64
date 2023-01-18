$IF QBCC_LISTS_TLIST_ISEMPTY=UNDEFINED THEN
$LET QBCC_LISTS_TLIST_ISEMPTY=DEFINED

$IF QBCC_LISTS_TLIST=UNDEFINED THEN
$ERROR expected: 'TList.bi'
$ENDIF

function TList.isEmpty%%(this as TList)
	TList.isEmpty = (len(TList.toString(this)) = 0)
end sub

$ENDIF
