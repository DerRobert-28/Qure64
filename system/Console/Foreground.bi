$IF QBCC_CONSOLE_FOREGROUND=UNDEFINED THEN
$LET QBCC_CONSOLE_FOREGROUND=DEFINED

$IF QBCC_CONSOLE=UNDEFINED THEN
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
