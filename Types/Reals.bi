$IF QBCC_TYPES_REALS=UNDEFINED THEN
$LET QBCC_TYPES_REALS=DEFINED

$IF QBCC_TYPES=UNDEFINED THEN
$ERROR expected: 'qbcc.bi'
$ENDIF

'$INCLUDE:'Reals\areEqual.bi'
'$INCLUDE:'Reals\contain.bi'
'$INCLUDE:'Reals\indexOf.bi'
'$INCLUDE:'Reals\lastIndexOf.bi'

$ENDIF
