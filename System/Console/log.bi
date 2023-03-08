$IF QURE64_SYSTEM_CONSOLE_LOG=UNDEFINED THEN
$LET QURE64_SYSTEM_CONSOLE_LOG=DEFINED

function Console.log$(this$)
	Console.log this$
end function

sub Console.log(this$)
	_dest _console
	print "[" + date$ + " " + time$ + "] " + this$
	_dest 0
end sub

$ENDIF
