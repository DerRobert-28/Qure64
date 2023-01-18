$IF QBCC_SYSTEM_EXCEPTION_IS=UNDEFINED THEN
$LET QBCC_SYSTEM_EXCEPTION_IS=DEFINED

$IF QBCC_SYSTEM=UNDEFINED THEN
$ERROR expected: 'qbcc.bi'
$ENDIF

function Exception.is%%(value%)
	shared LastExceptionCode%
	Exception.is = (LastExceptionCode% = value%)
end function

$ENDIF
