$IF QBCC_TYPES_DOUBLE=UNDEFINED THEN
$LET QBCC_TYPES_DOUBLE=DEFINED

$IF QBCC_TYPES=UNDEFINED THEN
$ERROR expected: 'qbcc.bi'
$ENDIF

'$INCLUDE:'Double\if.bi'
'$INCLUDE:'Double\toString.bi'
'$INCLUDE:'Double\valueOf.bi'

$ENDIF
