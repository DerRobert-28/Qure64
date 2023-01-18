$IF QBTYPES_SHORT_TOSTRING=UNDEFINED THEN
$LET QBTYPES_SHORT_TOSTRING=DEFINED

$IF QBTYPES_SHORT=UNDEFINED THEN
$ERROR expected: 'Short.bi'
$ENDIF

function Short.toString$(this%)
	Short.toString = ltrim$(str$(this%))
end function

$ENDIF
