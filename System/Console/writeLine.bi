$IF QURE64_SYSTEM_CONSOLE_WRITELINE=UNDEFINED THEN
$LET QURE64_SYSTEM_CONSOLE_WRITELINE=DEFINED

function Console.writeLine$(this$)
	Console.writeLine this$
end function

sub Console.writeLine(this$)
	print this$
end sub

$ENDIF
