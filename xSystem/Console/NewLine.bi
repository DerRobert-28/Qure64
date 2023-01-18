$IF QBCC_SYSTEM_CONSOLE_NEWLINE=UNDEFINED THEN
$LET QBCC_SYSTEM_CONSOLE_NEWLINE=DEFINED

$IF QBCC_SYSTEM_CONSOLE=UNDEFINED THEN
$ERROR expected: 'Console.bi'
$ENDIF

function Console.NewLine$()
	Console.NewLine
end function

sub Console.NewLine()
	print
end sub

$ENDIF
