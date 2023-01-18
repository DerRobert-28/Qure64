$IF QBCC_LISTS_TLIST_GETTAIL=UNDEFINED THEN
$LET QBCC_LISTS_TLIST_GETTAIL=DEFINED

$IF QBCC_LISTS_TLIST=UNDEFINED THEN
$ERROR expected: 'TList.bi'
$ENDIF

function TList.getTail$(class%, this as TList)
	if TList.isEmpty(this) then
		TList.getTail = ""
	else
		TList.getTail = mid$(TList.toString(this), class% + 1)
	endif
end function

sub TList.getTail(class%, target as TList, source as TList)
	target.value = TList.getTail(class%, source)
end sub

$ENDIF
