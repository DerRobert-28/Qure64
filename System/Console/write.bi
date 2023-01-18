$IF QBCC_SYSTEM_CONSOLE_WRITE=UNDEFINED THEN
$LET QBCC_SYSTEM_CONSOLE_WRITE=DEFINED

$IF QBCC_SYSTEM_CONSOLE=UNDEFINED THEN
$ERROR expected: 'Console.bi'
$ENDIF

function Console.write$(this$)
	Console.write this$
end function

sub Console.write(this$)
	print this$;
end sub

$ENDIF
