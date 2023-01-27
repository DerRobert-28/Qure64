$IF QB64CC_SYSTEM_CONSOLE_FOREGROUND=UNDEFINED THEN
$LET QB64CC_SYSTEM_CONSOLE_FOREGROUND=DEFINED

$IF QB64CC_SYSTEM_CONSOLE=UNDEFINED THEN
$ERROR expected: 'Console.bi'
$ENDIF

function Console.Foreground$(this%, value$)
	if this% >= 0 then Console.Foreground this%
	Console.Foreground = value$
end function

sub Console.Foreground(this%)
	color (_defaultcolor and 16) + (this% and 15)
end sub

$ENDIF
