$IF QB64CC_TYPES_REAL=UNDEFINED THEN
$LET QB64CC_TYPES_REAL=DEFINED

$IF QB64CC_TYPES=UNDEFINED THEN
$ERROR expected: 'qbcc.bi'
$ENDIF

'$INCLUDE:'Real\if.bi'
'$INCLUDE:'Real\toString.bi'
'$INCLUDE:'Real\valueOf.bi'

$ENDIF
