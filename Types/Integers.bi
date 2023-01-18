$IF QBCC_TYPES_INTEGERS=UNDEFINED THEN
$LET QBCC_TYPES_INTEGERS=DEFINED

$IF QBCC_TYPES=UNDEFINED THEN
$ERROR expected: 'qbcc.bi'
$ENDIF

'$INCLUDE:'Integers\areEqual.bi'
'$INCLUDE:'Integers\contain.bi'
'$INCLUDE:'Integers\indexOf.bi'
'$INCLUDE:'Integers\lastIndexOf.bi'

$ENDIF
