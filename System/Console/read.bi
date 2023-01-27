$IF QB64CC_SYSTEM_CONSOLE_READ=UNDEFINED THEN
$LET QB64CC_SYSTEM_CONSOLE_READ=DEFINED

$IF QB64CC_SYSTEM_CONSOLE=UNDEFINED THEN
$ERROR expected: 'Console.bi'
$ENDIF

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
