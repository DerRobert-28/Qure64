$IF QURE64_CC_SYSTEM_CONSOLE_NEWLINE=UNDEFINED THEN
$LET QURE64_CC_SYSTEM_CONSOLE_NEWLINE=DEFINED

function Console.newLine$()
	Console.newLine
end function


sub Console.newLine()
	print
end sub

$ENDIF
