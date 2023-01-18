$IF QBTYPES_BOOLEAN_FROMSTRING=UNDEFINED THEN
$LET QBTYPES_BOOLEAN_FROMSTRING=DEFINED

$IF QBTYPES_BOOLEAN=UNDEFINED THEN
$ERROR expected: 'Boolean.bi'
$ENDIF

function Boolean.fromString%%(this$)
	Boolean.fromString = (lcase$(ltrim$(rtrim$(this$))) = "true")
end function

sub Boolean.fromString(this as Boolean, value$)
	dim value0$
	value0$ = lcase$(ltrim$(rtrim$(value$)))
	this.isFalse = (value0$ = "false")
	this.isTrue = (value0$ = "true")
end sub

$ENDIF
