$IF QB64CC_SYSTEM_CONSOLE_WAITKEY=UNDEFINED THEN
$LET QB64CC_SYSTEM_CONSOLE_WAITKEY=DEFINED

$IF QB64CC_SYSTEM_CONSOLE=UNDEFINED THEN
$ERROR expected: 'Console.bi'
$ENDIF

function Console.waitKey$()
	dim result$
	result$ = ""
	while result$ = ""
		result$ = inkey$
	wend
	Console.waitKey = result$
end function

sub Console.waitKey()
	while inkey$ = ""
	wend
end sub

$ENDIF
