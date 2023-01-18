$IF QBCC_SYSTEM_EXCEPTION_ISOVERFLOW=UNDEFINED THEN
$LET QBCC_SYSTEM_EXCEPTION_ISOVERFLOW=DEFINED

$IF QBCC_SYSTEM=UNDEFINED THEN
$ERROR expected: 'qbcc.bi'
$ENDIF

function Exception.isOverflow%%()
	Exception.isOverflow = Exception.is(6)
end function

$ENDIF
