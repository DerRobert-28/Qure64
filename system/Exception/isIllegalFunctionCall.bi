$IF QBCC_SYSTEM_EXCEPTION_ISILLEGALFUNCTIONCALL=UNDEFINED THEN
$LET QBCC_SYSTEM_EXCEPTION_ISILLEGALFUNCTIONCALL=DEFINED

$IF QBCC_SYSTEM=UNDEFINED THEN
$ERROR expected: 'qbcc.bi'
$ENDIF

function Exception.isIllegalFunctionCall%%()
	Exception.isIllegalFunctionCall = Exception.is(5)
end function

$ENDIF
