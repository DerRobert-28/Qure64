$IF QURE64_SYSTEM_CONSOLE_WRITE=UNDEFINED THEN
$LET QURE64_SYSTEM_CONSOLE_WRITE=DEFINED

function Console.write$(this$)
	Console.write this$
end function

sub Console.write(this$)
	print this$;
end sub

$ENDIF
