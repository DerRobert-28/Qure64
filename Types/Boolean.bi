$IF QBCC_TYPES_BOOLEAN=UNDEFINED THEN
$LET QBCC_TYPES_BOOLEAN=DEFINED

$IF QBCC_TYPES=UNDEFINED THEN
$ERROR expected: 'Types.bi'
$ENDIF

type Boolean
	isFalse as _byte
	isTrue as _byte
end type

sub Boolean(this as Boolean, value as _byte)
	this.isFalse = (value = 0)
	this.isTrue = (value <> 0)
end sub

'$INCLUDE:'Boolean\fromString.bi'
'$INCLUDE:'Boolean\isDefined.bi'
'$INCLUDE:'Boolean\isFalse.bi'
'$INCLUDE:'Boolean\isTrue.bi'
'$INCLUDE:'Boolean\isUndefined.bi'
'$INCLUDE:'Boolean\of.bi'
'$INCLUDE:'Boolean\toString.bi'
'$INCLUDE:'Boolean\valueOf.bi'

$ENDIF
