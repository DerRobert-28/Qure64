$IF QB64CC_SYSTEM_EXCEPTION_TOSTRING=UNDEFINED THEN
$LET QB64CC_SYSTEM_EXCEPTION_TOSTRING=DEFINED

$IF QB64CC_SYSTEM=UNDEFINED THEN
$ERROR expected: 'qb64cc.bi'
$ENDIF

function Exception.toString$(this as integer)
	Exception.toString = _errormessage$(this)
end function

$ENDIF
