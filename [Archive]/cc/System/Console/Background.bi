$IF QURE64_CC_SYSTEM_CONSOLE_BACKGROUND=UNDEFINED THEN
$LET QURE64_CC_SYSTEM_CONSOLE_BACKGROUND=DEFINED

function Console.Background$(this%, value$)
	Console.Background this%
	Console.Background = value$
end function


sub Console.Background(this%)
	if this% < 0 then exit sub
	color (_defaultcolor and 15) + ((this% and 8) * 2), this% and 7
end sub

$ENDIF
