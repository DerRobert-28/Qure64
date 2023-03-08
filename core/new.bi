$IF QURE64_CORE_NEW=UNDEFINED THEN
$LET QURE64_CORE_NEW=DEFINED

function new&(this$)
	new = cvl(core.malloc$("put", this$))
end function

$ENDIF
