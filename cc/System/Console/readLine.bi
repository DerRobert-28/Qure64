$IF QURE64_CC_SYSTEM_CONSOLE_READLINE=UNDEFINED THEN
$LET QURE64_CC_SYSTEM_CONSOLE_READLINE=DEFINED

function Console.readLine$()
	dim result$
	line input result$
	Console.readLine = result$
end function

sub Console.readLine()
	dim dummy$
	dummy$ = Console.readLine
end sub

$ENDIF
