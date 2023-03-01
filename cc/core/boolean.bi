$IF QURE64_CC_CORE_BOOLEAN=UNDEFINED THEN
$LET QURE64_CC_CORE_BOOLEAN=DEFINED

function False%()
	False = 0
end function

function True%()
	True = not(False)
end function

$ENDIF
