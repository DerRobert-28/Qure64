$IF QB64CC_TYPES_CHAR_SEVEN=UNDEFINED THEN
$LET QB64CC_TYPES_CHAR_SEVEN=DEFINED

$IF QB64CC_TYPES_CHAR=UNDEFINED THEN
$ERROR expected: 'Char.bi'
$ENDIF

function Char.SEVEN$()
	Char.SEVEN = Char.from(55)
end function

$ENDIF
