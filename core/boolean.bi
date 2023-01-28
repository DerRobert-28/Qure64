$IF QURE64_CORE_BOOLEAN=UNDEFINED THEN
$LET QURE64_CORE_BOOLEAN=DEFINED

$IF QURE64_CORE=UNDEFINED THEN
$ERROR Expected: "core.bi"
$ENDIF

function False%()
	False = 0
end function

function True%()
	True = not(False)
end function

$ENDIF
