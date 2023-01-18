$IF QBCC_TYPES_LONGS=UNDEFINED THEN
$LET QBCC_TYPES_LONGS=DEFINED

$IF QBCC_TYPES=UNDEFINED THEN
$ERROR expected: 'qbcc.bi'
$ENDIF

'$INCLUDE:'Longs\areEqual.bi'
'$INCLUDE:'Longs\contain.bi'
'$INCLUDE:'Longs\indexOf.bi'
'$INCLUDE:'Longs\lastIndexOf.bi'

$ENDIF
