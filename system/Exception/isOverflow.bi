$IF QBCC_EXCEPTION_ISOVERFLOW=UNDEFINED THEN
$LET QBCC_EXCEPTION_ISOVERFLOW=DEFINED

$IF QBCC=UNDEFINED THEN
$ERROR expected: 'qbcc.bi'
$ENDIF

function Exception.isOverflow%%()
	Exception.isOverflow = Exception.is(6)
end function

$ENDIF
