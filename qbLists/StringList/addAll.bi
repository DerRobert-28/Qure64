$IF QBLISTS_STRINGLIST_ADDALL=UNDEFINED THEN
$LET QBLISTS_STRINGLIST_ADDALL=DEFINED

$IF QBLISTS_STRINGLIST=UNDEFINED THEN
$ERROR expected: 'StringList.bi'
$ENDIF

function StringList.addAll$(this as StringList, array$())
	StringList.addAll = this.value + StringList.from(array$())
end function

sub StringList.addAll(this as StringList, array$())
	this.value = StringList.addAll(this, array$())
end sub

$ENDIF
