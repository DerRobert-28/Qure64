$IF QBCC_SYSTEM_CONSOLE_WRITELINE=UNDEFINED THEN
$LET QBCC_SYSTEM_CONSOLE_WRITELINE=DEFINED

$IF QBCC_SYSTEM_CONSOLE=UNDEFINED THEN
$ERROR expected: 'Console.bi'
$ENDIF

function Console.writeLine$(this$)
	Console.writeLine this$
end function

sub Console.writeLine(this$)
	print this$
end sub

$ENDIF
