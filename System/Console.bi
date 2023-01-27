$IF QB64CC_SYSTEM_CONSOLE=UNDEFINED THEN
$LET QB64CC_SYSTEM_CONSOLE=DEFINED

'	================
'	FUNCTION methods
'	================

function Console.Background$(this%, value$)
	if this% >= 0 then Console.Background this%
	Console.Background = value$
end function

function Console.Clear$(value$)
	cls
	Console.Clear = value$
end function

function Console.Foreground$(this%, value$)
	if this% >= 0 then Console.Foreground this%
	Console.Foreground = value$
end function

function Console.NewLine$()
	Console.NewLine
end function

function Console.Read$()
	dim result$
	line input; result$
	Console.Read = result$
end function

function Console.ReadKey$()
	Console.ReadKey = inkey$
end function

function Console.ReadLine$()
	dim result$
	line input result$
	Console.ReadLine = result$
end function

function Console.SetColor$(foreground%, background%, value$)
	Console.SetColor foreground%, background%
	Console.SetColor = value$
end function

function Console.WaitKey$()
	dim result$
	result$ = ""
	while result$ = ""
		result$ = inkey$
	wend
	Console.WaitKey = result$
end function

function Console.Write$(this$)
	Console.Write this$
end function

function Console.WriteLine$(this$)
	Console.WriteLine this$
end function

'	===========
'	SUB methods
'	===========

sub Console.Background(this%)
	color (_defaultcolor and 15) + ((this% and 8) * 2), this% and 7
end sub

sub Console.Clear(this%)
	Console.Background this%
	cls
end sub

sub Console.Foreground(this%)
	color (_defaultcolor and 16) + (this% and 15)
end sub

sub Console.NewLine()
	print
end sub

sub Console.Read()
	dim dummy$
	dummy$ = Console.Read
end sub

sub Console.readLine()
	dim dummy$
	dummy$ = Console.ReadLine
end sub

sub Console.SetColor(foreground%, background%)
	Console.Foreground foreground%
	Console.Background background%
end sub

sub Console.WaitKey()
	while inkey$ = ""
	wend
end sub

sub Console.Write(this$)
	print this$;
end sub

sub Console.WriteLine(this$)
	print this$
end sub

$ENDIF
