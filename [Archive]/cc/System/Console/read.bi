$IF QURE64_CC_SYSTEM_CONSOLE_READ=UNDEFINED THEN
$LET QURE64_CC_SYSTEM_CONSOLE_READ=DEFINED


function Console.read$()
	dim result$
	line input; result$
	Console.read = result$
end function

sub Console.read()
	dim dummy$
	dummy$ = Console.read
end sub

$ENDIF
