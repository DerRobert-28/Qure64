$IF QURE64_CC_SYSTEM_EXCEPTION_TOSTRING=UNDEFINED THEN
$LET QURE64_CC_SYSTEM_EXCEPTION_TOSTRING=DEFINED

function Exception.toString$(this%)
	Exception.toString = _errormessage$(this%)
end function

$ENDIF
