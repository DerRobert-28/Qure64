$IF QBCC_EXCEPTION_ISILLEGALFUNCTIONCALL=UNDEFINED THEN
$LET QBCC_EXCEPTION_ISILLEGALFUNCTIONCALL=DEFINED

$IF QBCC=UNDEFINED THEN
$ERROR expected: 'qbcc.bi'
$ENDIF

function Exception.isIllegalFunctionCall%%()
	Exception.isIllegalFunctionCall = Exception.is(5)
end function

$ENDIF
