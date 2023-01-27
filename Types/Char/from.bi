$IF QB64CC_TYPES_CHAR_FROM=UNDEFINED THEN
$LET QB64CC_TYPES_CHAR_FROM=DEFINED

$IF QB64CC_TYPES_CHAR=UNDEFINED THEN
$ERROR expected: 'Char.bi'
$ENDIF

function Char.from$(value%)
	Char.from = chr$(value% and 255)
end function

$ENDIF
