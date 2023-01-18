$IF QBTYPES_INTEGERS=UNDEFINED THEN
$LET QBTYPES_INTEGERS=DEFINED

$IF QBTYPES=UNDEFINED THEN
$ERROR expected: 'qbcc.bi'
$ENDIF

'$INCLUDE:'Integers\areEqual.bi'
'$INCLUDE:'Integers\contain.bi'
'$INCLUDE:'Integers\indexOf.bi'
'$INCLUDE:'Integers\lastIndexOf.bi'

$ENDIF
