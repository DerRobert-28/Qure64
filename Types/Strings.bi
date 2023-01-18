$IF QBCC_TYPES_STRINGS=UNDEFINED THEN
$LET QBCC_TYPES_STRINGS=DEFINED

$IF QBCC_TYPES=UNDEFINED THEN
$ERROR expected: 'System.bi'
$ENDIF

'$INCLUDE:'Strings/areEqual.bi'
'$INCLUDE:'Strings/areEqualIgnoreCase.bi'
'$INCLUDE:'Strings/contain.bi'
'$INCLUDE:'Strings/containIgnoreCase.bi'
'$INCLUDE:'Strings/indexOf.bi'
'$INCLUDE:'Strings/indexOfIgnoreCase.bi'
'$INCLUDE:'Strings/lastIndexOf.bi'
'$INCLUDE:'Strings/lastIndexOfIgnoreCase.bi'

$ENDIF
