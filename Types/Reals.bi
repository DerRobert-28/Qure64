$IF QBTYPES_REALS=UNDEFINED THEN
$LET QBTYPES_REALS=DEFINED

$IF QBTYPES=UNDEFINED THEN
$ERROR expected: 'qbcc.bi'
$ENDIF

'$INCLUDE:'Reals\areEqual.bi'
'$INCLUDE:'Reals\contain.bi'
'$INCLUDE:'Reals\indexOf.bi'
'$INCLUDE:'Reals\lastIndexOf.bi'

$ENDIF
