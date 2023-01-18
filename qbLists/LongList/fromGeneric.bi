$IF QBLISTS_LONGLIST_FROMGENERIC=UNDEFINED THEN
$LET QBLISTS_LONGLIST_FROMGENERIC=DEFINED

$IF QBLISTS_LONGLIST=UNDEFINED THEN
$ERROR expected: 'LongList.bi'
$ENDIF

sub LongList.fromGeneric(source() as TList, target&())
	dim each&, lower&, upper&
	lower& = lbound(source)
	upper& = ubound(source)
	redim target&(lower& to upper&)
	for each& = lower& to upper&
		target&(each&) = cvl(source(each&).value)
	next
end sub

$ENDIF
