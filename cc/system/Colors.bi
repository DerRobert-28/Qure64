$IF QURE64_CC_SYSTEM_COLORS=UNDEFINED THEN
$LET QURE64_CC_SYSTEM_COLORS=DEFINED

'================]  FUNCTION  [================'

function Color.Black&()
	Color.Black = Color.of(0, 0, 0)
end function

function Color.Blue&()
	Color.Blue = Color.of(0, 0, 255)
end function

function Color.Brown&()
	Color.Brown = Color.of(127, 63, 0)
end function

function Color.Cyan&()
	Color.Cyan = Color.of(0, 255, 255)
end function

function Color.DarkBlue&()
	Color.DarkBlue = Color.of(0, 0, 127)
end function

function Color.DarkCyan&()
	Color.DarkCyan = Color.of(0, 127, 127)
end function

function Color.DarkGray&()
	Color.DarkGray = Color.of(85, 85, 85)
end function

function Color.DarkGreen&()
	Color.DarkGreen = Color.of(0, 127, 0)
end function

function Color.DarkGrey&()
	Color.DarkGrey = Color.DarkGray
end function

function Color.DarkMagenta&()
	Color.DarkMagenta = Color.of(127, 0, 127)
end function

function Color.DarkRed&()
	Color.DarkRed = Color.of(127, 0, 0)
end function

function Color.DarkYellow&()
	Color.DarkYellow = Color.of(127, 127, 0)
end function

function Color.Default&()
	Color.Default = -1
end function

function Color.Gray&()
	Color.Gray = Color.of(127, 127, 127)
end function

function Color.Green&()
	Color.Green = Color.of(0, 255, 0)
end function

function Color.Grey&()
	Color.Grey = Color.Gray
end function

function Color.LightBlue&()
	Color.LightBlue = Color.of(127, 127, 255)
end function

function Color.LightCyan&()
	Color.LightCyan = Color.of(127, 255, 255)
end function

function Color.LightGray&()
	Color.LightGray = Color.of(170, 170, 170)
end function

function Color.LightGreen&()
	Color.LightGreen = Color.of(127, 255, 127)
end function

function Color.LightGrey&()
	Color.LightGrey = Color.LightGray
end function

function Color.LightMagenta&()
	Color.LightMagenta = Color.of(255, 127, 255)
end function

function Color.LightRed&()
	Color.LightRed = Color.of(255, 127, 127)
end function

function Color.Magenta&()
	Color.Magenta = Color.of(255, 0, 255)
end function

function Color.of&(red%, green%, blue%)
	Color.of = _rgb(red% and 255, green% and 255, blue% and 255)
end function

function Color.Orange&()
	Color.Orange = Color.of(255, 127, 0)
end function

function Color.Purple&()
	Color.Purple = Color.of(255, 0, 127)
end function

function Color.Red&()
	Color.Red = Color.of(255, 0, 0)
end function

function Color.Violet&()
	Color.Violet = Color.of(127, 0, 255)
end function

function Color.White&()
	Color.White = Color.of(255, 255, 255)
end function

function Color.Yellow&()
	Color.Yellow = Color.of(255, 255, 0)
end function

$ENDIF
