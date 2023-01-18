$IF QBTYPES_BYTES=UNDEFINED THEN
$LET QBTYPES_BYTES=DEFINED

$IF QBTYPES=UNDEFINED THEN
$ERROR expected: 'qbcc.bi'
$ENDIF

'$INCLUDE:'Bytes\areEqual.bi'
'$INCLUDE:'Bytes\contain.bi'
'$INCLUDE:'Bytes\indexOf.bi'
'$INCLUDE:'Bytes\lastIndexOf.bi'

$ENDIF
