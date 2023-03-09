$IF QURE64_SYSTEM_CORE=DEFINED THEN
$ERROR 'core.bi' requires 'System.bi'
$ENDIF

'$INCLUDE:'./System/core.bi'

$IF QURE64_SYSTEM=UNDEFINED THEN
$LET QURE64_SYSTEM=DEFINED

'$INCLUDE:'./System/Color.bi'
'$INCLUDE:'./System/Console.bi'

$ENDIF
