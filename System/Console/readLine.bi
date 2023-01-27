$IF QB64CC_SYSTEM_CONSOLE_READLINE=UNDEFINED THEN
$LET QB64CC_SYSTEM_CONSOLE_READLINE=DEFINED

$IF QB64CC_SYSTEM_CONSOLE=UNDEFINED THEN
$ERROR expected: 'Console.bi'
$ENDIF

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
