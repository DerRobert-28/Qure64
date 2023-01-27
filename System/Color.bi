$IF QB64CC_COLOR=UNDEFINED THEN
$LET QB64CC_COLOR=DEFINED

function Color.BLACK&()
	Color.BLACK = Color.of(0, 0, 0)
end function

function Color.BLUE&()
	Color.BLUE = Color.of(0, 0, 255)
end function

function Color.BROWN&()
	Color.BROWN = Color.of(127, 63, 0)
end function

function Color.CYAN&()
	Color.CYAN = Color.of(0, 255, 255)
end function

function Color.DARKBLUE&()
	Color.DARKBLUE = Color.of(0, 0, 127)
end function

function Color.DARKCYAN&()
	Color.DARKCYAN = Color.of(0, 127, 127)
end function

function Color.DARKGRAY&()
	Color.DARKGRAY = Color.of(85, 85, 85)
end function

function Color.DARKGREEN&()
	Color.DARKGREEN = Color.of(0, 127, 0)
end function

function Color.DARKGREY&()
	Color.DARKGREY = Color.of(85, 85, 85)
end function

function Color.DARKMAGENTA&()
	Color.DARKMAGENTA = Color.of(127, 0, 127)
end function

function Color.DARKRED&()
	Color.DARKRED = Color.of(127, 0, 0)
end function

function Color.DARKYELLOW&()
	Color.DARKYELLOW = Color.of(127, 127, 0)
end function

function Color.DEFAULT&()
	Color.DEFAULT = -1
end function

function Color.GRAY&()
	Color.GRAY = Color.of(127, 127, 127)
end function

function Color.GREEN&()
	Color.GREEN = Color.of(0, 255, 0)
end function

function Color.GREY&()
	Color.GREY = Color.of(127, 127, 127)
end function

function Color.LIGHTBLUE&()
	Color.LIGHTBLUE = Color.of(127, 127, 255)
end function

function Color.LIGHTCYAN&()
	Color.LIGHTCYAN = Color.of(127, 255, 255)
end function

function Color.LIGHTGRAY&()
	Color.LIGHTGRAY = Color.of(170, 170, 170)
end function

function Color.LIGHTGREEN&()
	Color.LIGHTGREEN = Color.of(127, 255, 127)
end function

function Color.LIGHTGREY&()
	Color.LIGHTGREY = Color.of(170, 170, 170)
end function

function Color.LIGHTMAGENTA&()
	Color.LIGHTMAGENTA = Color.of(255, 127, 255)
end function

function Color.LIGHTRED&()
	Color.LIGHTRED = Color.of(255, 127, 127)
end function

function Color.MAGENTA&()
	Color.MAGENTA = Color.of(255, 0, 255)
end function

function Color.of&(red%, green%, blue%)
	Color.of = _rgb(red% and 255, green% and 255, blue% and 255)
end function

function Color.ORANGE&()
	Color.ORANGE = Color.of(255, 127, 0)
end function

function Color.PURPLE&()
	Color.PURPLE = Color.of(255, 0, 127)
end function

function Color.RED&()
	Color.RED = Color.of(255, 0, 0)
end function

function Color.VIOLET&()
	Color.VIOLET = Color.of(127, 0, 255)
end function

function Color.WHITE&()
	Color.WHITE = Color.of(255, 255, 255)
end function

function Color.YELLOW&()
	Color.YELLOW = Color.of(255, 255, 0)
end function

$ENDIF
