$IF QURE64_CC_VARIABLES=UNDEFINED THEN
$LET QURE64_CC_VARIABLES=DEFINED

$IF QURE64_CC=UNDEFINED THEN
$ERROR Expected: 'cc.bi'
$ENDIF

$IF QURE64_CORE_MAIN=DEFINED THEN
$ERROR 'variables.bi' expected before 'core/main.bi'
$ENDIF

'================]  DIM  [================'

dim shared IOresult%

$ENDIF
