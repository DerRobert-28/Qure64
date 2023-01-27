$IF QB64CC_TYPES_FLOAT_TOSTRING=UNDEFINED THEN
$LET QB64CC_TYPES_FLOAT_TOSTRING=DEFINED

$IF QB64CC_TYPES_FLOAT=UNDEFINED THEN
$ERROR expected: 'Float.bi'
$ENDIF

function Float.toString$(this!)
	Float.toString = ltrim$(str$(this!))
end function

$ENDIF
