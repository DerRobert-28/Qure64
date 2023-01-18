$IF QBCC_CONSOLE_WAITKEY=UNDEFINED THEN
$LET QBCC_CONSOLE_WAITKEY=DEFINED

$IF QBCC_CONSOLE=UNDEFINED THEN
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
