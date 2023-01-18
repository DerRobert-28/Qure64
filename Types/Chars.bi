$IF QBTYPES_CHARS=UNDEFINED THEN
$LET QBTYPES_CHARS=DEFINED

$IF QBTYPES=UNDEFINED THEN
$ERROR expected: 'qbcc.bi'
$ENDIF

'$INCLUDE:'Chars\areEqual.bi'
'$INCLUDE:'Chars\contain.bi'
'$INCLUDE:'Chars\indexOf.bi'
'$INCLUDE:'Chars\lastIndexOf.bi'

$ENDIF
