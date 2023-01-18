$IF QBTYPES_LONGS=UNDEFINED THEN
$LET QBTYPES_LONGS=DEFINED

$IF QBTYPES=UNDEFINED THEN
$ERROR expected: 'qbcc.bi'
$ENDIF

'$INCLUDE:'Longs\areEqual.bi'
'$INCLUDE:'Longs\contain.bi'
'$INCLUDE:'Longs\indexOf.bi'
'$INCLUDE:'Longs\lastIndexOf.bi'

$ENDIF
