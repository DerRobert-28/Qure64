$IF QBCC_CONSOLE_BACKGROUND=UNDEFINED THEN
$LET QBCC_CONSOLE_BACKGROUND=DEFINED

$IF QBCC_CONSOLE=UNDEFINED THEN
$ERROR expected: 'Console.bi'
$ENDIF

function Console.Background$(this%, value$)
	if this% >= 0 then Console.Background this%
	Console.Background = value$
end function

sub Console.Background(this%)
	color (_defaultcolor and 15) + ((this% and 8) * 2), this% and 7
end sub

$ENDIF
