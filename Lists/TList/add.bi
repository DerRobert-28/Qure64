$IF QBLISTS_TLIST_ADD=UNDEFINED THEN
$LET QBLISTS_TLIST_ADD=DEFINED

$IF QBLISTS_TLIST=UNDEFINED THEN
$ERROR expected: 'TList.bi'
$ENDIF

function TList.add$(class%, this as TList, value$)
	TList.add = this.value + left$(value$ + string$(class%, 0), class%)
end function 

sub TList.add(class%, this as TList, value$)
	this.value = TList.add(class%, this, value$)
end sub

sub TList.add2(class%, this as TList, first$, second$)
	TList.add class%, this, first$
	TList.add class%, this, second$
end sub

sub TList.add3(class%, this as TList, first$, second$, third$)
	TList.add class%, this, first$
	TList.add class%, this, second$
	TList.add class%, this, third$
end sub

$ENDIF
