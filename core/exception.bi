$IF QURE64_CORE_EXCEPTION=UNDEFINED THEN
$LET QURE64_CORE_EXCEPTION=DEFINED

sub Catch(this as integer)
	this = IOresult
end sub

sub Finally()
	on error goto 0
end sub

sub Throw(this as integer)
	error this
end sub

sub Try()
	on error goto OnError
end sub

$ENDIF
