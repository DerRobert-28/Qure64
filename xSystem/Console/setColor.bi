$IF QBCC_SYSTEM_CONSOLE_SETCOLOR=UNDEFINED THEN
$LET QBCC_SYSTEM_CONSOLE_SETCOLOR=DEFINED

$IF QBCC_SYSTEM_CONSOLE=UNDEFINED THEN
$ERROR expected: 'Console.bi'
$ENDIF

function Console.setColor$(foreground%, background%, value$)
	Console.setColor foreground%, background%
	Console.setColor = value$
end function

sub Console.setColor(foreground%, background%)
	Console.Foreground foreground%
	Console.Background background%
end sub

$ENDIF
