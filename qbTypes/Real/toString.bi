$IF QBTYPES_REAL_TOSTRING=UNDEFINED THEN
$LET QBTYPES_REAL_TOSTRING=DEFINED

$IF QBTYPES_REAL=UNDEFINED THEN
$ERROR expected: 'Real.bi'
$ENDIF

function Real.toString$(this##)
	Real.toString = ltrim$(str$(this##))
end function

$ENDIF
