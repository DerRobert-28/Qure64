$IF QBLISTS_LTIST_GETHEAD=UNDEFINED THEN
$LET QBLISTS_TLIST_GETHEAD=DEFINED

$IF QBLISTS_TLIST=UNDEFINED THEN
$ERROR expected: 'TList.bi'
$ENDIF

function TList.getHead$(class%, this as TList)
	TList.getHead = TList.get(class%, this, 0)
end function

$ENDIF
