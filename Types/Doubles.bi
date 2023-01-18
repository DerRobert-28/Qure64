$IF QBCC_TYPES_DOUBLES=UNDEFINED THEN
$LET QBCC_TYPES_DOUBLES=DEFINED

$IF QBCC_TYPES=UNDEFINED THEN
$ERROR expected: 'qbcc.bi'
$ENDIF

'$INCLUDE:'Doubles\areEqual.bi'
'$INCLUDE:'Doubles\contain.bi'
'$INCLUDE:'Doubles\indexOf.bi'
'$INCLUDE:'Doubles\lastIndexOf.bi'

$ENDIF
