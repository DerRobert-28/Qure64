$IF QB64CC_LISTS_LONGLIST_TOGENERIC=UNDEFINED THEN
$LET QB64CC_LISTS_LONGLIST_TOGENERIC=DEFINED

$IF QB64CC_LISTS_LONGLIST=UNDEFINED THEN
$ERROR expected: 'LongList.bi'
$ENDIF

sub LongList.toGeneric(source&(), target() as TList)
	dim each&, lower&, upper&
	lower& = lbound(source&)
	upper& = ubound(source&)
	redim target(lower& to upper&) as TList
	for each& = lower& to upper&
		target(each&).value = mkl$(source&(each&))
	next
end sub

$ENDIF
