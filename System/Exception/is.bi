$IF QB64CC_SYSTEM_EXCEPTION_IS=UNDEFINED THEN
$LET QB64CC_SYSTEM_EXCEPTION_IS=DEFINED

$IF QB64CC_SYSTEM=UNDEFINED THEN
$ERROR expected: 'qbcc.bi'
$ENDIF

function Exception.is%%(value%)
	shared LastExceptionCode%
	Exception.is = (LastExceptionCode% = value%)
end function

$ENDIF
