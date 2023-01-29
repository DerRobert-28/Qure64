$IF QURE64_CC_SYSTEM_EXCEPTIONS=UNDEFINED THEN
$LET QURE64_CC_SYSTEM_EXCEPTIONS=DEFINED

'================]  FUNCTION  [================'

function Exception.DuplicateDefinition%()
	Exception.DuplicateDefinition = 10
end function

function Exception.IllegalFunctionCall%()
	Exception.IllegalFunctionCall = 5
end function

function Exception.Overflow%()
	Exception.Overflow = 6
end function

function Exception.SubscriptOutOfRange%()
	Exception.SubscriptOutOfRange = 9
end function

function Exception.toString$(this%)
	Exception.toString = _errormessage$(this%)
end function

$ENDIF
