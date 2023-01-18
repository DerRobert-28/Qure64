$IF QBCC_EXCEPTION=UNDEFINED THEN
$LET QBCC_EXCEPTION=DEFINED

$IF QBCC=UNDEFINED THEN
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
