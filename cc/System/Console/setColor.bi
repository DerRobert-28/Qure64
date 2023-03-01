$IF QURE64_CC_SYSTEM_CONSOLE_SETCOLOR=UNDEFINED THEN
$LET QURE64_CC_SYSTEM_CONSOLE_SETCOLOR=DEFINED

function Console.setColor$(foreground%, background%, value$)
	Console.setColor foreground%, background%
	Console.setColor = value$
end function

sub Console.setColor(foreground%, background%)
	Console.Foreground foreground%
	Console.Background background%
end sub

$ENDIF
