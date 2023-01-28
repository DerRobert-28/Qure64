$IF QB64CC_TYPES_CHAR=UNDEFINED THEN
$LET QB64CC_TYPES_CHAR=DEFINED

function Char.ACCENT$()
	Char.ACCENT = Char.from(96)
end function

function Char.APOSTROPHE$()
	Char.APOSTROPHE = Char.from(39)
end function

function Char.AT$()
	Char.AT = Char.from(64)
end function

function Char.EIGHT$()
	Char.EIGHT = Char.from(56)
end function

function Char.FIVE$()
	Char.FIVE = Char.from(53)
end function

function Char.FOUR$()
	Char.FOUR = Char.from(52)
end function

function Char.from$(value%)
	Char.from = chr$(value% and 255)
end function

function Char.if$(this%%, first$, second$)
	if this%% then Char.if = Char.of(first$) else Char.if = Char.of(second$)
end function

function Char.NEWLINE$()
	Char.NEWLINE = Char.from(13)
end function

function Char.NINE$()
	Char.NINE = Char.from(57)
end function

function Char.NULL$()
	Char.NULL = Char.from(0)
end function

function Char.of$(this$)
	Char.of = Char.from(Char.valueOf(this$))
end function

function Char.ONE$()
	Char.ONE = Char.from(49)
end function

function Char.QUOTE$()
	Char.QUOTE = Char.from(34)
end function

function Char.SEVEN$()
	Char.SEVEN = Char.from(55)
end function

function Char.SIX$()
	Char.SIX = Char.from(54)
end function

function Char.SPACE$()
	Char.SPACE = Char.from(32)
end function

function Char.THREE$()
	Char.THREE = Char.from(51)
end function

function Char.toString$(this$1)
	dim result$
	result$ = chr$(32)
	mid$(result$, 1, 1) = this$1
	Char.toString = result$
end function

function Char.TWO$()
	Char.TWO = Char.from(50)
end function

function Char.valueOf%(this$)
	Char.valueOf = asc(this$ + Char.NULL)
end function

function Char.ZERO$()
	Char.ZERO = Char.from(48)
end function

$ENDIF
