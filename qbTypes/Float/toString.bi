$IF QBTYPES_FLOAT_TOSTRING=UNDEFINED THEN
$LET QBTYPES_FLOAT_TOSTRING=DEFINED

$IF QBTYPES_FLOAT=UNDEFINED THEN
$ERROR expected: 'Float.bi'
$ENDIF

function Float.toString$(this!)
	Float.toString = ltrim$(str$(this!))
end function

$ENDIF
