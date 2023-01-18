$IF QBCC_EXCEPTION_ISNOERROR=UNDEFINED THEN
$LET QBCC_EXCEPTION_ISNOERROR=DEFINED

$IF QBCC_EXCEPTION=UNDEFINED THEN
$ERROR expected: 'Exception.bi'
$ENDIF

function Exception.isNoError%%()
	Exception.isNoError = Exception.is(0)
end function

$ENDIF
