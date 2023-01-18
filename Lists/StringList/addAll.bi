$IF QBCC_LISTS_STRINGLIST_ADDALL=UNDEFINED THEN
$LET QBCC_LISTS_STRINGLIST_ADDALL=DEFINED

$IF QBCC_LISTS_STRINGLIST=UNDEFINED THEN
$ERROR expected: 'StringList.bi'
$ENDIF

function StringList.addAll$(this as StringList, array$())
	StringList.addAll = this.value + StringList.from(array$())
end function

sub StringList.addAll(this as StringList, array$())
	this.value = StringList.addAll(this, array$())
end sub

$ENDIF
