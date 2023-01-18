$IF QBLISTS_TLIST_TOSTRING=UNDEFINED THEN
$LET QBLISTS_TLIST_TOSTRING=DEFINED

$IF QBLISTS_TLIST=UNDEFINED THEN
$ERROR expected: 'TList.bi'
$ENDIF

function TList.toString$(this as TList)
	TList.toString = this.value
end function

$ENDIF
