$IF QB64CC_LISTS_STRINGLIST_ADD=UNDEFINED THEN
$LET QB64CC_LISTS_STRINGLIST_ADD=DEFINED

$IF QB64CC_LISTS_STRINGLIST=UNDEFINED THEN
$ERROR expected: 'StringList.bi'
$ENDIF

function StringList.add$(this as StringList, value$)
	StringList.add = this.value + mkl$(len(value$)) + value$
end function 

sub StringList.add(this as StringList, value$)
	this.value = StringList.add(this, value$)
end sub

sub StringList.add2(this as StringList, first$, second$)
	StringList.add this, first$
	StringList.add this, second$
end sub

sub StringList.add3(this as StringList, first$, second$, third$)
	StringList.add this, first$
	StringList.add this, second$
	StringList.add this, third$
end sub

$ENDIF
