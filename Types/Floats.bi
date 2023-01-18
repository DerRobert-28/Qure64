$IF QBTYPES_FLOATS=UNDEFINED THEN
$LET QBTYPES_FLOATS=DEFINED

$IF QBTYPES=UNDEFINED THEN
$ERROR expected: 'qbcc.bi'
$ENDIF

'$INCLUDE:'Floats\areEqual.bi'
'$INCLUDE:'Floats\contain.bi'
'$INCLUDE:'Floats\indexOf.bi'
'$INCLUDE:'Floats\lastIndexOf.bi'

$ENDIF
