$IF QB64CC_LISTS_TLIST_TOARRAY=UNDEFINED THEN
$LET QB64CC_LISTS_TLIST_TOARRAY=DEFINED

$IF QB64CC_LISTS_TLIST=UNDEFINED THEN
$ERROR expected: 'TList.bi'
$ENDIF

function TList.toArray%%(class%, this as TList, array() as TList)
	dim each&, index&
	if TList.isEmpty(this) then
		TList.toArray = FALSE
	else
		index& = TList.sizeOf(class%, this) - 1
		redim array(0 to index&) as TList
		for each& = 0 to index&
			array(each&).value = TList.get(class%, this, each&)
		next
		TList.toArray = TRUE
	endif
end sub

sub TList.toArray(class%, this as TList, array() as TList)
	dim result%%
	result%% = TList.toArray(class%, this, array())
end sub


$ENDIF
