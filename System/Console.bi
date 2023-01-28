$IF QB64CC_SYSTEM_CONSOLE=UNDEFINED THEN
$LET QB64CC_SYSTEM_CONSOLE=DEFINED

'	================
'	FUNCTION methods
'	================

function Console.Background$(this%, value$)
	if this% >= 0 then Console.Background this%
	Console.Background = value$
end function

function Console.clear$(value$)
	cls
	Console.clear = value$
end function

function Console.Foreground$(this%, value$)
	if this% >= 0 then Console.Foreground this%
	Console.Foreground = value$
end function

function Console.newLine$()
	Console.newLine
end function

function Console.read$()
	dim result$
	line input; result$
	Console.read = result$
end function

function Console.readKey$()
	Console.readKey = inkey$
end function

function Console.readLine$()
	dim result$
	line input result$
	Console.readLine = result$
end function

function Console.setColor$(foreground%, background%, value$)
	Console.setColor foreground%, background%
	Console.setColor = value$
end function

function Console.waitKey$()
	dim result$
	result$ = ""
	while result$ = ""
		result$ = inkey$
	wend
	Console.waitKey = result$
end function

function Console.write$(this$)
	Console.write this$
end function

function Console.writeLine$(this$)
	Console.writeLine this$
end function

'	===========
'	SUB methods
'	===========

sub Console.Background(this%)
	color (_defaultcolor and 15) + ((this% and 8) * 2), this% and 7
end sub

sub Console.clear(this%)
	Console.Background this%
	cls
end sub

sub Console.Foreground(this%)
	color (_defaultcolor and 16) + (this% and 15)
end sub

sub Console.newLine()
	print
end sub

sub Console.read()
	dim dummy$
	dummy$ = Console.read
end sub

sub Console.readLine()
	dim dummy$
	dummy$ = Console.readLine
end sub

sub Console.setColor(foreground%, background%)
	Console.Foreground foreground%
	Console.Background background%
end sub

sub Console.waitKey()
	while inkey$ = ""
	wend
end sub

sub Console.write(this$)
	print this$;
end sub

sub Console.writeLine(this$)
	print this$
end sub

$ENDIF
