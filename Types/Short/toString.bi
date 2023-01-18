$IF QBCC_TYPES_SHORT_TOSTRING=UNDEFINED THEN
$LET QBCC_TYPES_SHORT_TOSTRING=DEFINED

$IF QBCC_TYPES_SHORT=UNDEFINED THEN
$ERROR expected: 'Short.bi'
$ENDIF

function Short.toString$(this%)
	Short.toString = ltrim$(str$(this%))
end function

$ENDIF
