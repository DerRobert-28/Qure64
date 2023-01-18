$IF QBTYPES_SHORTS=UNDEFINED THEN
$LET QBTYPES_SHORTS=DEFINED

$IF QBTYPES=UNDEFINED THEN
$ERROR expected: 'qbcc.bi'
$ENDIF

'$INCLUDE:'Shorts\areEqual.bi'
'$INCLUDE:'Shorts\contain.bi'
'$INCLUDE:'Shorts\indexOf.bi'
'$INCLUDE:'Shorts\lastIndexOf.bi'

$ENDIF
