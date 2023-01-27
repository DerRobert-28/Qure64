$IF QB64CC_LISTS_LTIST_GETHEAD=UNDEFINED THEN
$LET QB64CC_LISTS_TLIST_GETHEAD=DEFINED

$IF QB64CC_LISTS_TLIST=UNDEFINED THEN
$ERROR expected: 'TList.bi'
$ENDIF

function TList.getHead$(class%, this as TList)
	TList.getHead = TList.get(class%, this, 0)
end function

$ENDIF
