$IF QURE64_CC_SYSTEM_CONSOLE_READKEY=UNDEFINED THEN
$LET QURE64_CC_SYSTEM_CONSOLE_READKEY=DEFINED

function Console.readKey$()
	Console.readKey = inkey$
end function

$ENDIF