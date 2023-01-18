$IF QBLISTS_STRINGLIST_TOSTRING=UNDEFINED THEN
$LET QBLISTS_STRINGLIST_TOSTRING=DEFINED

$IF QBLISTS_STRINGLIST=UNDEFINED THEN
$ERROR expected: 'StringList.bi'
$ENDIF

function StringList.toString$(this as StringList)
	StringList.toString = this.value
end function

$ENDIF
