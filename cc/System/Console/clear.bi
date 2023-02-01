$IF QURE64_CC_SYSTEM_CONSOLE_CLEAR=UNDEFINED THEN
$LET QURE64_CC_SYSTEM_CONSOLE_CLEAR=DEFINED

function Console.clear$(value$)
	cls
	Console.clear = value$
end function

sub Console.clear(this%)
	Console.Background this%
	cls
end sub

$ENDIF
