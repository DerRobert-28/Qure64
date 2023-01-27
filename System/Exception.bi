$IF QB64CC_SYSTEM_EXCEPTION=UNDEFINED THEN
$LET QB64CC_SYSTEM_EXCEPTION=DEFINED

$IF QB64CC_SYSTEM=UNDEFINED THEN
$ERROR expected: 'System.bi'
$ENDIF

'type Exception
'end type

'x$INCLUDE:'Exception/is.bi'
'x$INCLUDE:'Exception/isDuplicateDefinition.bi'
'x$INCLUDE:'Exception/isIllegalFunctionCall.bi'
'x$INCLUDE:'Exception/isNoError.bi'
'x$INCLUDE:'Exception/isOverflow.bi'

$ENDIF
