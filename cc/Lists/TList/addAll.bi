$IF QB64CC_LISTS_TLIST_ADDALL=UNDEFINED THEN
$LET QB64CC_LISTS_TLIST_ADDALL=DEFINED

$IF QB64CC_LISTS_TLIST=UNDEFINED THEN
$ERROR expected: 'TList.bi'
$ENDIF

function TList.addAll$(class%, this as TList, array() as TList)
	TList.addAll = this.value + TList.from(class%, array())
end function

sub TList.addAll(class%, this as TList, array() as TList)
	this.value = TList.addAll(class%, this, array())
end sub

$ENDIF
