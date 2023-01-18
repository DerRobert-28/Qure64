$IF QBCC_EXCEPTION_IS=UNDEFINED THEN
$LET QBCC_EXCEPTION_IS=DEFINED

$IF QBCC=UNDEFINED THEN
$ERROR expected: 'qbcc.bi'
$ENDIF

function Exception.is%%(value%)
	shared LastExceptionCode%
	Exception.is = (LastExceptionCode% = value%)
end function

$ENDIF
