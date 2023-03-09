$IF QURE64_SYSTEM_CORE_NEW=UNDEFINED THEN
$LET QURE64_SYSTEM_CORE_NEW=DEFINED

function new&(this$)
	new = cvl(malloc$("put", this$))
end function

$ENDIF
