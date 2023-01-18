$IF QBCC_CONSOLE_CLEAR=UNDEFINED THEN
$LET QBCC_CONSOLE_CLEAR=DEFINED

$IF QBCC_CONSOLE=UNDEFINED THEN
$ERROR expected: 'Console.bi'
$ENDIF

function Console.clear$(value$)
	cls
	Console.clear = value$
end function

sub Console.clear(this%)
	Console.Background this%
	cls
end sub

$ENDIF
