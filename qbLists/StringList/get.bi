$IF QBLISTS_STRINGLIST_GET=UNDEFINED THEN
$LET QBLISTS_STRINGLIST_GET=DEFINED

$IF QBLISTS_STRINGLIST=UNDEFINED THEN
$ERROR expected: 'StringList.bi'
$ENDIF

function StringList.get$(this as StringList, index&)
	dim array$(0)
	if StringList.toArray(this, array$()) then
		if index& < lbound(array$) then
		 	throw TList.IndexOutOfBoundsException
		elseif index& > ubound(array$) then
			throw TList.IndexOutOfBoundsException
		else
		 	StringList.get = array$(index&)
		endif
	else
		throw TList.IndexOutOfBoundsException
	endif
end function

$ENDIF
