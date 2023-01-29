$IF QURE64_CC_EXCEPTION=UNDEFINED THEN
$LET QURE64_CC_EXCEPTION=DEFINED

$IF QURE64_CC_VARIABLES=UNDEFINED THEN
$ERROR Expected: 'cc/variables.bi'
$ENDIF

$IF QURE64_CORE_MAIN=UNDEFINED THEN
$ERROR Expected: 'core/main.bi'
$ENDIF

'================]  RESUME  [================'

OnError:
	IOresult% = err
resume next

'================]  SUB  [================'

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
