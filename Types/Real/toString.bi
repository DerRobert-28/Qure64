$IF QB64CC_TYPES_REAL_TOSTRING=UNDEFINED THEN
$LET QB64CC_TYPES_REAL_TOSTRING=DEFINED

$IF QB64CC_TYPES_REAL=UNDEFINED THEN
$ERROR expected: 'Real.bi'
$ENDIF

function Real.toString$(this##)
	Real.toString = ltrim$(str$(this##))
end function

$ENDIF
