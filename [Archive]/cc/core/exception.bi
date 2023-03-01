$IF QURE64_CC_CORE_EXCEPTION=UNDEFINED THEN
$LET QURE64_CC_CORE_EXCEPTION=DEFINED

OnError:
	IOresult% = err
resume next

sub catch(this%)
	this% = IOresult%
end sub

sub finally()
	on error goto 0
end sub

sub throw(this%)
	error this%
end sub

sub try()
	on error goto OnError
end sub

$ENDIF
