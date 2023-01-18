$IF QBTYPES_DOUBLES=UNDEFINED THEN
$LET QBTYPES_DOUBLES=DEFINED

$IF QBTYPES=UNDEFINED THEN
$ERROR expected: 'qbcc.bi'
$ENDIF

'$INCLUDE:'Doubles\areEqual.bi'
'$INCLUDE:'Doubles\contain.bi'
'$INCLUDE:'Doubles\indexOf.bi'
'$INCLUDE:'Doubles\lastIndexOf.bi'

$ENDIF
