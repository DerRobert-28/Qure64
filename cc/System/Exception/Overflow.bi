$IF QURE64_CC_SYSTEM_EXCEPTION_OVERFLOW=UNDEFINED THEN
$LET QURE64_CC_SYSTEM_EXCEPTION_OVERFLOW=DEFINED

function Exception.Overflow%()
	Exception.Overflow = 6
end function

$ENDIF
