$IF QBCC_TYPES_CHARS=UNDEFINED THEN
$LET QBCC_TYPES_CHARS=DEFINED

$IF QBCC_TYPES=UNDEFINED THEN
$ERROR expected: 'qbcc.bi'
$ENDIF

'$INCLUDE:'Chars\areEqual.bi'
'$INCLUDE:'Chars\contain.bi'
'$INCLUDE:'Chars\indexOf.bi'
'$INCLUDE:'Chars\lastIndexOf.bi'

$ENDIF
