$IF QBCC_CONSOLE_READKEY=UNDEFINED THEN
$LET QBCC_CONSOLE_READKEY=DEFINED

$IF QBCC_CONSOLE=UNDEFINED THEN
$ERROR expected: 'Console.bi'
$ENDIF

function Console.readKey$()
	Console.readKey = inkey$
end function

$ENDIF
