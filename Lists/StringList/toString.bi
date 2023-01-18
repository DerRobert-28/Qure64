$IF QBCC_LISTS_STRINGLIST_TOSTRING=UNDEFINED THEN
$LET QBCC_LISTS_STRINGLIST_TOSTRING=DEFINED

$IF QBCC_LISTS_STRINGLIST=UNDEFINED THEN
$ERROR expected: 'StringList.bi'
$ENDIF

function StringList.toString$(this as StringList)
	StringList.toString = this.value
end function

$ENDIF
