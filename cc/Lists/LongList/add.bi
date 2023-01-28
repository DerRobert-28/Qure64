$IF QB64CC_LISTS_LONGLIST_ADD=UNDEFINED THEN
$LET QB64CC_LISTS_LONGLIST_ADD=DEFINED

$IF QB64CC_LISTS_LONGLIST=UNDEFINED THEN
$ERROR expected: 'LongList.bi'
$ENDIF

function LongList.add$(this as LongList, value&)
	LongList.add = TList.add(LongList.class, this.value, mkl$(value&))
end function 

sub LongList.add(this as LongList, value&)	
	TList.add LongList.class, this.value, mkl$(value&)
end sub

sub LongList.add2(this as LongList, first&, second&)
	LongList.add this, first&
	LongList.add this, second&
end sub

sub LongList.add3(this as LongList, first&, second&, third&)
	LongList.add this, first&
	LongList.add this, second&
	LongList.add this, third&
end sub

$ENDIF
