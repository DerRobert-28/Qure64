$IF QBCC_TYPES_BYTES=UNDEFINED THEN
$LET QBCC_TYPES_BYTES=DEFINED

$IF QBCC_TYPES=UNDEFINED THEN
$ERROR expected: 'qbcc.bi'
$ENDIF

'$INCLUDE:'Bytes\areEqual.bi'
'$INCLUDE:'Bytes\contain.bi'
'$INCLUDE:'Bytes\indexOf.bi'
'$INCLUDE:'Bytes\lastIndexOf.bi'

$ENDIF
