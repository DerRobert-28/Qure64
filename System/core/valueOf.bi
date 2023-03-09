$IF QURE64_SYSTEM_CORE_VALUE=UNDEFINED THEN
$LET QURE64_SYSTEM_CORE_VALUE=DEFINED

function valueOf$(this&)
	valueOf = malloc$("get", mkl$(this&))
end function

$ENDIF
