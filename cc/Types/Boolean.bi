$IF QB64CC_TYPES_BOOLEAN=UNDEFINED THEN
$LET QB64CC_TYPES_BOOLEAN=DEFINED

type Boolean
	isFalse as _byte
	isTrue as _byte
end type

sub Boolean(this as Boolean, value as _byte)
	this.isFalse = (value = 0)
	this.isTrue = (value <> 0)
end sub

sub Boolean.fromString(this as Boolean, value$)
	dim value0$
	value0$ = lcase$(ltrim$(rtrim$(value$)))
	this.isFalse = (value0$ = "false")
	this.isTrue = (value0$ = "true")
end sub

function Boolean.fromString%%(this$)
	Boolean.fromString = (lcase$(ltrim$(rtrim$(this$))) = "true")
end function

function Boolean.isDefined%%(this as Boolean)
	Boolean.isDefined = not Boolean.isUndefined(this)
end function

function Boolean.isFalse%%(this as Boolean)
	Boolean.isFalse = Boolean.isDefined(this) and this.isFalse
end function

function Boolean.isTrue%%(this as Boolean)
	Boolean.isTrue = Boolean.isDefined(this) and this.isTrue
end function

function Boolean.isUndefined%%(this as Boolean)
	Boolean.isUndefined = (this.isFalse = 0) and (this.isTrue = 0)
end function

function Boolean.of$(this%%)
	if this%% then
		Boolean.of = "true"
	else
		Boolean.of = "false"
	endif
end function

function Boolean.toString$(this as Boolean)
	if this.isTrue then
		Boolean.toString = "true"
	elseif this.isFalse then
		Boolean.toString = "false"
	else
		Boolean.toString = "undefined"
	endif
end function

function Boolean.valueOf%%(this$)
	Boolean.valueOf = (lcase$(ltrim$(rtrim$(this$))) = "true")
end function

$ENDIF
