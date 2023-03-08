$IF QURE64_SYSTEM_CONSOLE_FOREGROUND=UNDEFINED THEN
$LET QURE64_SYSTEM_CONSOLE_FOREGROUND=DEFINED

function Console.Foreground$(this%, value$)
	Console.Foreground this%
	Console.Foreground = value$
end function

sub Console.Foreground(this%)
	if this% < 0 then exit sub
	color (_defaultcolor and 16) + (this% and 15)
end sub

$ENDIF
