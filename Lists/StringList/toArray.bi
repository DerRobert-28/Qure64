$IF QBLISTS_STRINGLIST_TOARRAY=UNDEFINED THEN
$LET QBLISTS_STRINGLIST_TOARRAY=DEFINED

$IF QBLISTS_STRINGLIST=UNDEFINED THEN
$ERROR expected: 'StringList.bi'
$ENDIF

function StringList.toArray%%(this as StringList, array$())
	dim index&, item$, tail as StringList
	if StringList.isEmpty(this) then
		StringList.toArray = FALSE
	else
		index& = 0
		tail.value = this.value
		while len(tail.value)
			item$ = StringList.getHead(tail)
			StringList.getTail tail, tail
			redim _preserve array$(0 to index&)
			array$(index&) = item$
			index& = index& + 1
		wend
		StringList.toArray = TRUE
	endif
end sub

sub StringList.toArray(this as StringList, array$())
	dim result as _byte
	result = StringList.toArray(this, array$())
end sub


$ENDIF
