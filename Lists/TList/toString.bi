$IF QBCC_LISTS_TLIST_TOSTRING=UNDEFINED THEN
$LET QBCC_LISTS_TLIST_TOSTRING=DEFINED

$IF QBCC_LISTS_TLIST=UNDEFINED THEN
$ERROR expected: 'TList.bi'
$ENDIF

function TList.toString$(this as TList)
	TList.toString = this.value
end function

$ENDIF
