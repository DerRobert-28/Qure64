$IF QURE64_CC_SYSTEM_EXCEPTION=UNDEFINED THEN
$LET QURE64_CC_SYSTEM_EXCEPTION=DEFINED

'$INCLUDE:'Exception/DuplicateDefinition.bi'
'$INCLUDE:'Exception/IllegalFunctionCall.bi'
'$INCLUDE:'Exception/Overflow.bi'
'$INCLUDE:'Exception/SubscriptOutOfRange.bi'
'$INCLUDE:'Exception/toString.bi'

$ENDIF
