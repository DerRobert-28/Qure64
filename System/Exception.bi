$IF QB64CC_SYSTEM_EXCEPTION=UNDEFINED THEN
$LET QB64CC_SYSTEM_EXCEPTION=DEFINED

function Exception.DuplicateDefinition%()
	Exception.DuplicateDefinition = 10
end function

function Exception.IllegalFunctionCall%()
	Exception.IllegalFunctionCall = 5
end function

function Exception.Overflow%()
	Exception.Overflow = 6
end function

function Exception.toString$(this%)
	Exception.toString = _errormessage$(this%)
end function

$ENDIF
