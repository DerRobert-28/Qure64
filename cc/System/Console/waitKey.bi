$IF QURE64_CC_SYSTEM_CONSOLE_WAITKEY=UNDEFINED THEN
$LET QURE64_CC_SYSTEM_CONSOLE_WAITKEY=DEFINED

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
