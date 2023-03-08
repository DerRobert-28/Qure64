$IF QURE64_CORE_VALUE=UNDEFINED THEN
$LET QURE64_CORE_VALUE=DEFINED

function valueOf$(this&)
	valueOf = core.malloc$("get", mkl$(this&))
end function

$ENDIF
